# frozen_string_literal: true

class ItemIngredient < ApplicationRecord
  include ReloadGuid
  belongs_to :item
  belongs_to :ingredient
end
