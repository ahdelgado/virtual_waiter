# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_many :items, through: :item_ingredients
  validates :name, presence: true
end
