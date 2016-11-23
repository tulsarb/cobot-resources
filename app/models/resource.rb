class Resource < ApplicationRecord
  validates :name, :integration_id, :integration_raw, presence: true

  def self.sync_with_cobot
    SyncCobotResourcesJob.perform_later
  end
end
