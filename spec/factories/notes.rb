FactoryGirl.define do
  factory :note do
    association :mentor
    association :admin
    body { Faker::Lorem.sentence }
  end
end
