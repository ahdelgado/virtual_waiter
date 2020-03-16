# frozen_string_literal: true

class Section < ApplicationRecord
  belongs_to :menu
  has_many :items
  has_many :ingredients, through: :items

  validates :name, presence: true
end
