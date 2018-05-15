# frozen_string_literal: true

class Author < ActiveRecord::Base
  field :name, :string

  has_and_belongs_to_many :books
  has_many :posts
  timestamps
end
