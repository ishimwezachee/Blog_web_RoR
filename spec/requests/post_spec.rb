require 'rails_helper'

# status
RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:example) { get user_posts_path(10) }
    it 'Successfuly get route' do
      expect(response).to have_http_status(:ok)
    end

    it "Renders 'index' template for users" do
      expect(response).to render_template('index')
    end
    it 'Checks if users/index html elements rendered' do
      expect(response.body).to include('POST1 Data')
    end
  end
  describe 'GET /show' do
    before(:example) { get user_post_path(10, 0o5) }

    it 'Response staturs correct' do
      expect(response).to have_http_status(:success)
    end
    it "Renders 'show' template for users" do
      expect(response).to render_template('show')
    end
    it 'Checks if response body includes correct placeholder text' do
      expect(response.body).to include('This is the list of user')
    end
  end
end
