# frozen_string_literal: true

class Section < ApplicationRecord
  include ReloadGuid
  belongs_to :sectionable, polymorphic: true, dependent: :destroy
  has_many :section_items
  has_many :items, through: :section_items
  validates :name, presence: true
end
