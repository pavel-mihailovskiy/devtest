require 'rails_helper'

RSpec.describe LocationsController, type: :controller do
  subject { response }

  describe 'GET #index' do
    let(:country) { create(:country) }
    let(:params) { { country_code: country.country_code } }

    before { get :index, params }

    it { is_expected.to have_http_status(:ok) }
  end
end
