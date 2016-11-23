require 'rails_helper'

describe Resource do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:integration_id) }
  it { should validate_presence_of(:integration_raw) }
end
