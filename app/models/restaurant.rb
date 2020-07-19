# frozen_string_literal: true

class Restaurant < ApplicationRecord
  include ReloadGuid
  has_many :menus
  belongs_to :restaurant_chain
  has_one :address, as: :addressable
  validates :name, presence: true
end
