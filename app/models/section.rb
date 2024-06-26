# frozen_string_literal: true

class Section < ApplicationRecord
  include ReloadGuid
  has_many :menu_sections
  has_many :menus, through: :menu_sections
  has_many :section_items, dependent: :destroy
  has_many :items, through: :section_items
  validates :name, presence: true
end
