# 3 Panel Providers
PANEL_PROVIDERS = [
  FactoryGirl.create(:panel_provider_b_tags),
  FactoryGirl.create(:panel_provider_html_nodes),
  FactoryGirl.create(:panel_provider_letters)
]

# 3 Countries, each with different panel provider
PANEL_PROVIDERS.each do |panel_provider|
  FactoryGirl.create(:country, panel_provider: panel_provider)
end

# 20 Locations of any type (city, region, state, etc.)
20.times { FactoryGirl.create(:location) }

# 4 Location Groups, 3 of them with different provider and 1 would belong to any of them
PANEL_PROVIDERS.each do |panel_provider|
  FactoryGirl.create(
    :location_group,
    panel_provider: panel_provider,
    country: Country.all.sample
  )
end

FactoryGirl.create(:location_group,
  panel_provider: PANEL_PROVIDERS.sample,
  country: Country.all.sample
)

# 4 root Target Groups and each root should start a tree which is minimium 3 levels deep (3 of them with different provider and 1 would belong to any of them)
def create_target_groups(target_group, deep_level = 0)
  unless deep_level >= 3
    target_group = FactoryGirl.create(:target_group, parent_group: target_group, panel_provider: nil)
    create_target_groups(target_group, deep_level + 1)
  end
end

3.times do
  target_group = FactoryGirl.create(:target_group, panel_provider: nil)
  create_target_groups(target_group)
end
