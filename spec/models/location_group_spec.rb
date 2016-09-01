require 'rails_helper'

RSpec.describe LocationGroup, type: :model do
  describe 'associations' do
    it { is_expected.to have_and_belong_to_many(:locations) }
    it { is_expected.to belong_to(:country) }
    it { is_expected.to belong_to(:panel_provider) }
  end
end
