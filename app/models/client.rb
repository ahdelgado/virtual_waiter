# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :restaurant_chains
  has_one_attached :logo
  has_one :address, as: :addressable

  validates :name, presence: true
end
