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

end