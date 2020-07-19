# frozen_string_literal: true

class Role < ApplicationRecord
  include ReloadGuid
  has_many :user_roles
  has_many :users, through: :user_roles
end


