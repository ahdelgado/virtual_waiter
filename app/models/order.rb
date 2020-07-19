# frozen_string_literal: true

class Order < ApplicationRecord
  include ReloadGuid
  belongs_to :restaurant
  has_many :items
end
