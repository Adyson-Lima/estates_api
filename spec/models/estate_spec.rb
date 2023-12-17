require 'rails_helper'

RSpec.describe Estate, type: :model do

  before{@estate = Estate.new}

  describe 'Testes de preenchimento do model Estate' do

    it 'name consegue ser preenchido?' do
      @estate.name = 'Pará'
      expect(@estate.name).to eq('Pará')
    end

    it 'capital consegue ser preenchido?' do
      @estate.capital = 'Belém'
      expect(@estate.capital).to eq('Belém')
    end

  end

  describe 'Testes de validação do model Estate' do

    it 'estate valido com campos obrigatorios preenchidos?' do
      @estate.name = 'São Paulo'
      @estate.capital = 'São Paulo'
      expect(@estate).to be_valid
    end

    it 'estate invalido com campos obrigatorios não preenchidos?' do
      estate = Estate.new
      expect(estate).to be_valid
    end

  end

end