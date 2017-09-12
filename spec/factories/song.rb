FactoryGirl.define do
  factory :song do
    song_name    { Faker::Lorem.sentence(1) }
    release_year 2012
    genre        { Faker::Lorem.sentence(2) }
  end
end
