# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :sections, through: :section_items
  has_many :ingredients, through: :item_ingredients
  has_one_attached :picture

  validates :name, :price, presence: true
end
