# frozen_string_literal: true

class ItemIngredient < ApplicationRecord
  belongs_to :item
  belongs_to :ingredient
end
