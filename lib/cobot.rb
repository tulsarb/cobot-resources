class Cobot
  attr_reader :api_key, :client
  def initialize
    @api_key = ENV.fetch('COBOT_API_KEY')
  end

  def client
    @client ||= CobotClient::ApiClient.new(api_key)
  end

  def sync
    sync_resources
  end

  def sync_resources
    @api_resources = client.get_resources('36n')

    @api_resources.each do |api_resource|
      resource = Resource.find_or_initialize_by(integration_id: api_resource[:id])
      resource.name = api_resource[:name]
      resource.description = api_resource[:description]
      resource.capacity = api_resource[:capacity]
      resource.hidden = api_resource[:hidden]
      resource.min_booking_duration = api_resource[:min_booking_duration]
      resource.max_booking_duration = api_resource[:max_booking_duration]
      resource.integration_raw = api_resource.as_json

      resource.new_record? || resource.changed? ? resource.save : resource
    end
  end
end
