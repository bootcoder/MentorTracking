FactoryGirl.define do
  factory :mentor do
    association :location
    name {Faker::Name.first_name}
    phone {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
    img_url {Faker::Avatar.image}
    github_handle {Faker::Book.genre}
    cohort {Faker::Team.creature}
    address {Faker::Address.street_address}
    dbc_start {Faker::Time.between(200.days.ago, Date.today, :all)}
    dbc_end {Faker::Time.between(2.days.ago, Date.today, :all)}
    provider { "google"}
    uid { "1234" }
    token { "123123" }
    refresh_token { "234124241" }
    token_expires_at { 123 }
  end
end
