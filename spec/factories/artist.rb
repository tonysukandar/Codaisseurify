FactoryGirl.define do
  factory :artist do
    name      { Faker::Name.first_name }
    picture   { Faker::Lorem.sentence }
  end
end
