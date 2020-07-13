# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'LinkLikes', type: :request do
  let(:nerd) { create(:nerd) }
  let(:link) { create(:link) }
  let(:link_like) { create(:link_like, nerd: nerd, link: link) }

  describe 'POST #create' do
    it 'creates a LinkLike' do
      expect(LinkLike.count).to eq(0)

      login_as(nerd)
      post("/links/#{link.id}/link_likes", xhr: true)

      expect(LinkLike.count).to eq(1)
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys a link_like' do
      link_like
      expect(LinkLike.count).to eq(1)

      login_as(nerd)

      delete("/link_likes/#{link.id}", xhr: true)
      expect(LinkLike.count).to eq(0)
    end
  end
end
