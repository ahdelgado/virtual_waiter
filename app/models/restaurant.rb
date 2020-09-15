# frozen_string_literal: true

class Restaurant < ApplicationRecord
  include ReloadGuid
  has_many :restaurant_menus
  has_many :menus, through: :restaurant_menus
  has_one_attached :logo
  belongs_to :restaurant_chain
  has_one :address, as: :addressable
  validates :name, presence: true
end
