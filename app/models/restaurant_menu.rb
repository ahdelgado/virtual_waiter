# frozen_string_literal: true

class RestaurantMenu < ApplicationRecord
  include ReloadGuid
  belongs_to :restaurant
  belongs_to :menu
end
