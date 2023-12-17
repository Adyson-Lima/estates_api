require 'rails_helper'

RSpec.describe Api::V1::EstatesController, type: :controller do

  before{@estate = Estate.create(name: 'Rio Grande do Sul', capital: 'Porto Alegre')}

  describe 'GET /api/v1/estates' do
    it 'Consegue listar todos os estates e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/estates/id' do
    it 'Consegue listar um estate especifico e retornar status 200?' do
      get :show, params: {id: @estate.id}
      expect(response.body).to include_json(name: 'Rio Grande do Sul')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/estates' do
    it 'Consegue criar um estate e retornar status 201?' do
      post :create, params: {estate: {name: 'Paraná', capital: 'Curitiba'}, format: :json}
      expect(response.body).to include_json(capital: 'Curitiba')
      expect(response).to have_http_status(201)
    end
  end

end