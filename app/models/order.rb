# frozen_string_literal: true

class Order < ApplicationRecord
  include ReloadGuid
  has_one :note, as: :notable
end
