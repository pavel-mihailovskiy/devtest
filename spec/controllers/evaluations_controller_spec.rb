require 'rails_helper'

RSpec.describe EvaluationsController, type: :controller do
  let(:admin) { Admin.create }

  subject { response }

  describe 'POST #create' do
    let(:country) { create(:country) }
    let(:target_group) { create(:target_group) }
    let(:locations) { [ { id: 1, panel_size: 5} ] }
    let(:evaluation) { double(valid?: true, total_price: 100) }
    let(:params) { {
      auth_token: admin.auth_token,
      evaluation: {
        country_code: country.country_code,
        target_group_id: target_group.id,
        locations: locations
      }
    } }

    before do
      allow(Evaluation).to receive(:new).and_return(evaluation)
      post :create, params
    end

    context 'when params is valid' do
      it { is_expected.to have_http_status(:ok) }
    end

    context 'when params is invalid' do
      let(:evaluation) { double(valid?: false, errors: []) }

      it { is_expected.to have_http_status(:unprocessable_entity) }
    end

    context 'when auth token doesnt specified' do
      let(:params) { super().except(:auth_token) }

      it { is_expected.to have_http_status(:unauthorized) }
    end
  end
end
