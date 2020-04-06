# frozen_string_literal: true

class Ingredient < ApplicationRecord
  belongs_to :item
  has_one_attached :picture

  validates :name, presence: true
end
