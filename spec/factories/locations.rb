FactoryGirl.define do
  factory :location do
    name { FFaker::Address.city }
    secret_code { FFaker::Lorem.word.upcase }
    external_id { rand(1000) }
  end
end

