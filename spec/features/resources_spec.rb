require 'rails_helper'

feature 'list resources' do
  before do
    sign_in user

    allow_any_instance_of(User).to receive(:api_token).and_return(ENV.fetch('COBOT_API_KEY'))
  end
  describe 'it shows a list of resources' do
    let(:user) { create(:user) }
    let!(:resource) { create(:resource) }

    it 'list a resource' do
      visit resources_path
      expect(page).to have_content(resource.name)
    end

    it 'list the correct number of resource' do
      visit resources_path
      expect(page).to have_selector('li', count: Resource.count)
    end
  end
end
