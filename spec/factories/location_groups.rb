FactoryGirl.define do
  factory :location_group do
    name { FFaker::Lorem.word.capitalize }
  end
end
