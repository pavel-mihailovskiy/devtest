require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'associations' do
    it { is_expected.to have_and_belong_to_many(:location_groups) }
  end
end
