FactoryBot.define do
  factory :coupon do
    code { Faker::Commerce.promotion_code(digits: 6) }
    status { %i[active inactive].sample }
    discount_value { range(1..99) }
    due_date { "2024-08-01 20:52:45" }
  end
end
