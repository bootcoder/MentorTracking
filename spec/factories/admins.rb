require 'faker'

FactoryGirl.define do
  factory :admin do
    association :location
    name { Faker::Name.first_name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    github_handle {Faker::Name.first_name}


    factory :invalid_contact do
      name nil
    end
  end
end
