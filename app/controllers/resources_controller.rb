class ResourcesController < ApplicationController
  def index
    client = CobotClient::ApiClient.new(current_user.api_token)
    @resources = client.get_resources('36n')
  end
end
