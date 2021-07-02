FactoryBot.define do
  factory :product do
    sequence(:title) { |n|  "MyString#{n}" }
    description { 'MyText' }
    price { 10.00 }
    sequence(:sku) { |n| "sku_46795734#{n}" }
    number_in_stock { 101 }
  end
end
