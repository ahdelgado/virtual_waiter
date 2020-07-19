# frozen_string_literal: true

class RestaurantChain < ApplicationRecord
  include ReloadGuid
  belongs_to :client
  has_many :restaurants
  has_one_attached :logo
  validates :name, presence: true
end
