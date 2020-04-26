# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_many :items, through: :item_ingredients
  has_one_attached :picture

  validates :name, presence: true
end
