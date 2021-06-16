require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should belong_to(:basket) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:cost_when_added) }
  it { should belong_to(:product) }
end
