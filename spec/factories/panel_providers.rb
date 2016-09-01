FactoryGirl.define do
  factory :panel_provider do
    code { FFaker::Lorem.word.upcase }
    type { [PanelProvider::BTags, PanelProvider::HTMLNodes, PanelProvider::Letters].sample }
  end
end
