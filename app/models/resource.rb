class Resource < ApplicationRecord
  validates :name, :integration_id, :integration_raw, presence: true
end
