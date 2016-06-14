FactoryGirl.define do
  factory :employment do
    association :mentor
    company_name { Faker::Company.name }
    start_date { 10.days.ago }
  end
end
