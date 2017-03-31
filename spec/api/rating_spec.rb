require 'rails_helper'
require 'support/factory_girl'
require 'factories'

describe Rating, type: :request do
  subject(:film) { create(:film) }
  context 'API ratings' do
    it 'creates a rating' do
      subject
      post '/api/v1/ratings', params: { rating: { rating: 4, film_id: 1 } }
      json = JSON.parse(response.body)

      expect(response).to be_success

      expect(Film.all.count).to eq(1)
      expect(json['id']).to eq(1)
    end

    it 'film doesn\'t exist' do
      post '/api/v1/ratings', params: { rating: { rating: 4, film_id: 1 } }
      json = JSON.parse(response.body)

      expect(response.status).to eq(404)
      expect(json['error']).to eq('Rating was not created')
    end
  end

  context 'validates' do
    it 'invalid rating' do
      subject
      post '/api/v1/ratings', params: { rating: { rating: 9, film_id: 1 } }
      json = JSON.parse(response.body)

      expect(response.status).to eq(404)
      expect(json['error']).to eq('Rating was not created')
    end

    it 'film_id is nil' do
      subject
      post '/api/v1/ratings', params: { rating: { rating: 2, film_id: nil } }
      json = JSON.parse(response.body)

      expect(response.status).to eq(404)
      expect(json['error']).to eq('Rating was not created')
    end
  end
end
