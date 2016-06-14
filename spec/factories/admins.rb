require 'faker'

FactoryGirl.define do
  factory :admin do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    github_handle {Faker::Name.first_name}

    factory :invalid_contact do
      first_name nil
    end
  end
end
