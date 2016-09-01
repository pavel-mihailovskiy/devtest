require 'rails_helper'

RSpec.describe TargetGroup, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:panel_provider) }
    it { is_expected.to belong_to(:parent_group).class_name(TargetGroup).with_foreign_key(:parent_id) }
    it { is_expected.to have_many(:subgroups).class_name(TargetGroup).with_foreign_key(:parent_id) }
    it { is_expected.to have_and_belong_to_many(:countries) }
  end
end
