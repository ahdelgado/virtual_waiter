# frozen_string_literal: true

class SectionItem < ApplicationRecord
  include ReloadGuid
  belongs_to :section
  belongs_to :item
end
