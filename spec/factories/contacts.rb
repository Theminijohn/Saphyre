FactoryGirl.define do
  factory :contact do
    association :project
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name } 
    mobile_number '01737112792'
    home_number '07115057470'
  end
end
