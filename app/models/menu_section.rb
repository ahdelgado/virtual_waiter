# frozen_string_literal: true

class MenuSection < ApplicationRecord
  include ReloadGuid
  belongs_to :menu
  belongs_to :section
end
