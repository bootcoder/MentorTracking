FactoryGirl.define do
  factory :location do
    time_zone { "UTC -08:00" }
    name { Faker::Address.city }
  end
end
