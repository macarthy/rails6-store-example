require 'rails_helper'

describe Product, type: :model do
  context 'validations' do
    before(:example) do
      FactoryBot.create_list(:product, 10)
    end

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end
