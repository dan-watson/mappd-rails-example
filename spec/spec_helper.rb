# frozen_string_literal: true

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rake'
require 'shoulda-matchers'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.before(:suite) do
    Dir.glob('app/models/**/*.rb').each do |file_path|
      basename = File.basename(file_path, File.extname(file_path))
      clazz = basename.camelize.constantize
      next if clazz.abstract_class
      clazz.migrate! if clazz.ancestors.include?(ActiveRecord::Base)
    end
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
