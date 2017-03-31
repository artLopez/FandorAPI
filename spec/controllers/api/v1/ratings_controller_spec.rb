require 'rails_helper'
require 'support/factory_girl'
require 'factories'

describe Api::V1::RatingsController, type: :controller do
  describe 'GET #index' do
    let(:film) { create(:film) }
    it '200 status code' do
      film
      post :create, params: { rating: { rating: 4, film_id: 1 } }

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
