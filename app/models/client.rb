# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :menus
  has_one_attached :logo

  validates :name, presence: true
end
