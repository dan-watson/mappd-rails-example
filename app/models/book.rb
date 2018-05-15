# frozen_string_literal: true

class Book < ActiveRecord::Base
  field :name, :string

  has_and_belongs_to_many :authors
  timestamps
end
