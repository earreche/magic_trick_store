# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'AdminUsers::Sessions' do
  let(:user) { create(:user, password: password) }
  let(:password) { 'Password-123' }
  let(:params) { { user: { email: user.email, password: password } } }

  describe 'GET /users/sign_in' do
    subject do
      get new_user_session_path
      response
    end

    it 'returns successfully' do
      expect(subject).to have_http_status(:ok)
    end
  end

  describe 'POST /users/sign_in' do
    subject { post user_session_path, params: params }

    context 'when password is correct' do
      it 'redirects to admin tricks path' do
        expect(subject).to redirect_to(admin_tricks_path)
      end
    end

    context 'when password is wrong' do
      let(:user) { create(:user, password: 'new password') }

      it 'doesn\'t redirect to the admins tricks path' do
        expect(subject).not_to redirect_to(admin_tricks_path)
      end

      it 'returns Unprocessable Entity' do
        subject

        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
