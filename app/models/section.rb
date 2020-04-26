# frozen_string_literal: true

class Section < ApplicationRecord
  has_many :menus, through: :menu_sections
  has_many :items, through: :section_items

  validates :name, presence: true
end
