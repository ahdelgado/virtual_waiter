# frozen_string_literal: true

class Menu < ApplicationRecord
  belongs_to :client
  has_many :sections
  has_many :items, through: :sections

  validates :name, presence: true
end
