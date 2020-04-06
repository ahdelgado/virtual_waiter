# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :menu
  has_many :ingredients
  has_one_attached :picture

  validates :name, :price, presence: true
end
