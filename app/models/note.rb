# frozen_string_literal: true

class Note < ApplicationRecord
  include ReloadGuid
  belongs_to :notable, polymorphic: true
end
