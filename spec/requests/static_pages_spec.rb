# spec/requests/static_pages_spec.rb
require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /home' do
    context 'homeページにアクセスした場合' do
      before { get static_pages_home_url }

      it 'ステータスがsuccessになること' do
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'GET /help' do
    context 'helpページにアクセスした場合' do
      before { get static_pages_help_url }

      it 'ステータスがsuccessになること' do
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'GET /about' do
    context 'aboutページにアクセスした場合' do
      before { get static_pages_about_url }

      it 'ステータスがsuccessになること' do
        expect(response).to have_http_status(:success)
      end
    end
  end
end
