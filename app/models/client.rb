# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :menus

  validates :name, presence: true
end
