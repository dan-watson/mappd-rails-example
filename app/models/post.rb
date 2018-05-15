# frozen_string_literal: true

class Post < ActiveRecord::Base
  field :title, :string
  field :body, :text
  field :published, :boolean
  timestamps
end
