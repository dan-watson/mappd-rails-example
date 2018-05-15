# frozen_string_literal: true

Dir.glob('app/models/**/*.rb').each do |file_path|
  basename = File.basename(file_path, File.extname(file_path))
  clazz = basename.camelize.constantize
  next if clazz.abstract_class
  clazz.migrate! if clazz.ancestors.include?(ActiveRecord::Base)
end
