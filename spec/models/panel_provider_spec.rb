require 'rails_helper'

RSpec.describe PanelProvider, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:countries) }
    it { is_expected.to have_many(:location_groups) }
    it { is_expected.to have_many(:target_groups) }
  end

  describe '#price' do
    it { expect{ subject.price }.to raise_error(NotImplementedError) }
  end
end
