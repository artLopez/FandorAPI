require 'rails_helper'
require 'support/factory_girl'
require 'factories'

describe Film, type: :request do
  let(:film) { create(:film) }
  it 'API retrieves film' do
    get "/api/v1/films/#{film.id}"

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json['id']).to eq(film.id)
  end

  it 'API 404 film not found' do
    get '/api/v1/films/4'

    json = JSON.parse(response.body)

    expect(response.status).to eq(404)
    expect(json['error']).to eq('Film was not found')
  end

  it 'API retrieves all films' do
    create_list(:film, 25)
    get '/api/v1/films'

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json['films'].length).to eq(25)
  end
end
