# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Links', type: :request do
  let(:nerd) { create(:nerd) }
  let(:link) { create(:link) }
  let(:link_params) do
    { link: { title: 'some random post', url: 'https://www.check-out-this.com' } }
  end
  describe 'GET #index' do
    it 'returns a valid status code' do
      login_as(nerd)
      get root_path
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    it 'returns a valid status code and creates a link' do
      expect(Link.count).to eq(0)
      login_as(nerd)

      post('/links', params: link_params)
      expect(response.status).to eq(302)
      expect(Link.count).to eq(1)
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes a link succesfully' do
      link
      expect(Link.count).to eq(1)

      login_as(nerd)
      delete("/links/#{link.id}")

      expect(Link.count).to eq(0)
    end
  end
end
