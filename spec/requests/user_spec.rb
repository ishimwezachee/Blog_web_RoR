require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get users_path }

    it "should render 'index' template" do
      expect(response).to render_template('index')
    end
  end

  describe 'GET /show' do
    before(:example) { get user_path(1) }
  end
end
