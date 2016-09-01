FactoryGirl.define do
  factory :country do
    country_code { FFaker::Address.country_code }
    panel_provider
  end
end
