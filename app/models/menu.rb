# frozen_string_literal: true

class Menu < ApplicationRecord
  include ReloadGuid
  has_many :restaurant_menus
  has_many :restaurants, through: :restaurant_menus
  has_many :sections, as: :sectionable
  validates :name, presence: true
end
