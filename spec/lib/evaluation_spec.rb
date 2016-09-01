require 'rails_helper'

RSpec.describe Evaluation, type: :model do
  let(:locations) { [
    { id: 1, panel_size: 3 },
    { id: 2, panel_size: 5 }
  ] }
  let(:country) { create(:country) }
  let(:target_group) { create(:target_group) }
  let(:instance) { described_class.new(
    country_code: country.country_code,
    target_group_id: target_group.id,
    locations: locations
  ) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:country_code) }
    it { is_expected.to validate_presence_of(:target_group_id) }
    it { is_expected.to validate_presence_of(:locations) }
  end

  describe '#total_price' do
    before { allow(instance).to receive(:price).and_return(1) }

    subject { instance.total_price }

    it { is_expected.to eq(8) }
  end

  describe '#price' do
    let(:price) { rand(1000) }
    let(:panel_provider) { double(price: price) }

    subject { instance.price }

    before { allow_any_instance_of(Country).to receive(:panel_provider).and_return(panel_provider) }

    it { is_expected.to eq(price) }
  end

  describe '#country' do
    let(:instance) { described_class.new(country_code: 'UA') }

    subject { instance.country }

    it { expect(Country).to receive(:find_by).with(country_code: 'UA') }

    after { subject }
  end
end
