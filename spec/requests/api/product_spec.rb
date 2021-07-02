require 'rails_helper'

describe 'Products' do
  context 'GET /api/v1/products' do
    before(:example) do
      FactoryBot.create_list(:product, 10)
    end
    it 'returns an empty array of products' do
      get '/api/v1/products'
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body).length).to eq(10)
    end
  end
end
