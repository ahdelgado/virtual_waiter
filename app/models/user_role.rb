# frozen_string_literal: true

class UserRole < ApplicationRecord
  include ReloadGuid
  belongs_to :user
  belongs_to :role
end
