# frozen_string_literal: true

class Address < ApplicationRecord
  include ReloadGuid
  belongs_to :addressable, polymorphic: true
end
