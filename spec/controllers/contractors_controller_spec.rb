require 'rails_helper'

describe ContractorsController do
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates the contractor' do
        post :create, contractor: attributes_for(:contractor)
        expect(Contractor.count).to eq(1)
      end

      it 'redirects to the "show" action for new contractor' do
        post :create, contractor: attributes_for(:contractor)
        expect(response).to redirect_to Contractor.first
      end
    end

    context 'with invalid attributes' do
      it 'does not create contractor' do
        post :create, contractor: attributes_for(:contractor, name: nil)
        expect(Contractor.count).to eq(0)
      end

      it 're-renders the "new" view' do
        post :create, contractor: attributes_for(:contractor, name: nil)
        expect(response).to render_template :new
      end
    end
  end
end
