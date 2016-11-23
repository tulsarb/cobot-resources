require 'rails_helper'

feature 'User sign-in' do
  context 'with valid user account' do
    let(:user) { create(:user) }

    it 'redirects to the list of resources' do
      sign_in user

      allow_any_instance_of(User).to receive(:api_token).and_return(ENV.fetch('COBOT_TEST_API_KEY'))

      visit root_path

      expect(current_path).to eq(root_path)
    end
  end
end
