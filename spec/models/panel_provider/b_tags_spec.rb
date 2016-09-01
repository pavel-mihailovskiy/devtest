require 'rails_helper'

RSpec.describe PanelProvider::BTags, type: :model do
  describe '#price' do
    it 'returns B tags count' do
      VCR.use_cassette('googleapis') do
        subject.price
        expect(subject.price).to eq(32)
      end
    end
  end
end
