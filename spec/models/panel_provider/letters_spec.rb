require 'rails_helper'

RSpec.describe PanelProvider::Letters, type: :model do
  describe '#price' do
    it 'returns count' do
      VCR.use_cassette('time.com') do
        subject.price
        expect(subject.price).to eq(9)
      end
    end
  end
end

