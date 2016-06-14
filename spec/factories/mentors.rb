FactoryGirl.define do
  factory :mentor do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    phone {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
    img_url {Faker::Avatar.image}
    github_handle {Faker::Book.genre}
    cohort {Faker::Team.creature}
    address {Faker::Address.street_address}
    dbc_start {Faker::Time.between(200.days.ago, Date.today, :all)}
    dbc_end {Faker::Time.between(2.days.ago, Date.today, :all)}
  end
end
