require 'rails_helper'

RSpec.describe Country, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:panel_provider) }
    it { is_expected.to have_and_belong_to_many(:target_groups) }
    it { is_expected.to have_many(:location_groups) }
    it { is_expected.to have_many(:locations).through(:location_groups) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:country_code) }
    it { is_expected.to validate_uniqueness_of(:country_code) }
  end
end
