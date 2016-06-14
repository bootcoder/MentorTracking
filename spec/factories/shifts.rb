FactoryGirl.define do
  factory :shift do
    association :department
    association :mentor
    association :admin
    association :location
    start_time {Faker::Time.between(2.days.ago, Date.today, :all)}
    end_time {Faker::Time.between(1.days.ago, Date.today, :all)}
  end
end
