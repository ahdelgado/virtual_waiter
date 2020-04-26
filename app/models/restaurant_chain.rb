# frozen_string_literal: true

class RestaurantChain < ApplicationRecord
  has_many :restaurants
  belongs_to :client
  has_one_attached :logo

  validates :name, presence: true
end
