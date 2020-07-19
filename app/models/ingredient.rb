# frozen_string_literal: true

class Ingredient < ApplicationRecord
  include ReloadGuid
  has_many :item_ingredients
  has_many :items, through: :item_ingredients
  validates :name, presence: true
end
