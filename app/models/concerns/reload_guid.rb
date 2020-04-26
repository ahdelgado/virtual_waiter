# frozen_string_literal: true

module ReloadGuid
  extend ActiveSupport::Concern

  included do
    # https://github.com/rails/rails/issues/17605
    after_create :reload_guid

    private

    def reload_guid
      self[:guid] = self.class.where(id: id).pluck(:guid).first if attributes.key? 'guid'
    end
  end
end
