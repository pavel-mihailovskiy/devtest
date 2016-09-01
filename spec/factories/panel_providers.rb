FactoryGirl.define do
  factory :panel_provider do
    code { FFaker::Lorem.word.upcase }
    type { [PanelProvider::BTags, PanelProvider::HTMLNodes, PanelProvider::Letters].sample }
  end

  factory :panel_provider_b_tags, parent: :panel_provider do
    type { PanelProvider::BTags }
  end

  factory :panel_provider_html_nodes, parent: :panel_provider do
    type { PanelProvider::HTMLNodes }
  end

  factory :panel_provider_letters, parent: :panel_provider do
    type { PanelProvider::Letters }
  end
end
