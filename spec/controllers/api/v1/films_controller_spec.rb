require 'rails_helper'
require 'support/factory_girl'
require 'factories'

describe Api::V1::FilmsController, type: :controller do
  describe 'GET #index' do
    let(:film1) { create(:film) }
    let(:film2) { create(:film) }

    it '200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'loads all of the films' do
      film1
      film2
      get :index

      expect(assigns(:films)).to match_array([film1, film2])
    end
  end
end
