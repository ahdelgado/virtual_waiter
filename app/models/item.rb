# frozen_string_literal: true

class Item < ApplicationRecord
  include ReloadGuid
  has_many :sections, as: :sectionable
  # has_many :item_ingredients, dependent: :destroy
  # has_many :ingredients, through: :item_ingredients

  has_many :ingredients, class_name: :items

  has_one_attached :picture
  validates :name, presence: true
end
