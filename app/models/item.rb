class Item < ApplicationRecord
  belongs_to :basket
  belongs_to :product

  validates_presence_of :quantity, :basket, :product, :cost_when_added
end
