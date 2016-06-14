require 'faker'

FactoryGirl.define do
  factory :department do
    name { Faker::Company.name }
    cost_center { Faker::Business.credit_card_number }
  end
end
