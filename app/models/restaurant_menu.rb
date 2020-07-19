# frozen_string_literal: true

class RestaurantMenu < ApplicationRecord
  belongs_to :restaurant
  belongs_to :menu
end
