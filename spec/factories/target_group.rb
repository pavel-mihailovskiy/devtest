FactoryGirl.define do
  factory :target_group do
    name { FFaker::Lorem.word }
    panel_provider
  end
end

