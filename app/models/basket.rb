class Basket < ApplicationRecord
  # baskets can be owned by anon
  has_many :items
  belongs_to :customer, required: false

end
