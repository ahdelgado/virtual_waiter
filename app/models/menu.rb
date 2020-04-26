# frozen_string_literal: true

class Menu < ApplicationRecord
  include ReloadGuid

  has_many :restaurants, through: :restaurant_menus
  has_many :sections, through: :menu_sections

  validates :name, presence: true
end
