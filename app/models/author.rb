# frozen_string_literal: true

class Author < ActiveRecord::Base
  field :name, :string

  has_many :posts
  timestamps
end
