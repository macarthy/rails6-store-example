require 'rails_helper'

describe 'Products' do
  context 'GET /api/v1/products' do
    it 'returns an empty array of products' do
      get '/api/v1/products'
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)).to eq []
    end
  end
end
