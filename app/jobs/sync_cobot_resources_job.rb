class SyncCobotResourcesJob < ApplicationJob
  queue_as :default

  def perform
    cobot = Cobot.new
    cobot.sync_resources
  end
end
