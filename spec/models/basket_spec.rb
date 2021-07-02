require 'rails_helper'

RSpec.describe Basket, type: :model do

  # a basket should have a created_date
  # a basket should have a owner (customer or anon)
  # a basket should have a last_updated date
  # a basket should have a last_visited date
  # a basket may have items
  # a basket has a subtotal
  # a backet has a total number of items

  describe "basket" do
    context do
      it { should belong_to(:customer) }
      it { should have_many(:items) }
      it { should validate_presence_of(:updated_at) }
      it { should validate_presence_of(:last_visited_at) }
      it { should validate_presence_of(:sub_total) }
      it { should validate_presence_of(:item_count).on(:save) }
    end
  end

end
