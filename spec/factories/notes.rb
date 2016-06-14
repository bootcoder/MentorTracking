FactoryGirl.define do
  factory :note do
    body { Faker::Lorem.sentence }
  end
end
