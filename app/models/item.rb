# frozen_string_literal: true

class Item < ApplicationRecord
  include ReloadGuid
  has_one :note, as: :notable
  has_many :section_items
  has_many :sections, through: :section_items
  has_many :item_ingredients
  has_many :ingredients, through: :item_ingredients
  has_one_attached :picture
  validates :name, :price, presence: true
end
