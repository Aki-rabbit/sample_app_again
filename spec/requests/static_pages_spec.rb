# spec/requests/static_pages_spec.rb
require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /home' do
    context 'homeページにアクセスした場合' do
      before { get static_pages_home_url }

      it 'ステータスがsuccessになること' do
        expect(response).to have_http_status(:success)
      end

      it 'タイトルに"Home"が含まれていないこと' do
        expect(response.body).to include('<title>Ruby on Rails Tutorial Sample App</title>')
        expect(response.body).not_to include('Home')
      end
    end
  end

  describe 'GET /help' do
    context 'helpページにアクセスした場合' do
      before { get static_pages_help_url }

      it 'ステータスがsuccessになること' do
        expect(response).to have_http_status(:success)
      end

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include('<title>Help | Ruby on Rails Tutorial Sample App</title>')
      end
    end
  end

  describe 'GET /about' do
    context 'aboutページにアクセスした場合' do
      before { get static_pages_about_url }

      it 'ステータスがsuccessになること' do
        expect(response).to have_http_status(:success)
      end

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include('<title>About | Ruby on Rails Tutorial Sample App</title>')
      end
    end
  end
end
