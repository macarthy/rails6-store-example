require 'rails_helper'

describe Product, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end



describe Product,  type: :model do


end
