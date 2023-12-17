require 'rails_helper'

RSpec.describe Estate, type: :model do

  before{@estate = Estate.new}

  describe 'Testes de preenchimento do model Estate' do

    it 'name consegue ser preenchido?' do
      @estate.name = ''
      expect(@estate.name).to eq('Pará')
    end

  end

end