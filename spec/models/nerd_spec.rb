# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Nerd, type: :model do
  let(:google_data) do
    {
      email: Faker::Internet.email,
      full_name: Faker::TvShows::RickAndMorty.character,
      uid: Faker::Number.number(digits: 10),
      avatar_url: Faker::Avatar.image
    }
  end
  describe 'valid records' do
    it 'has a valid factory' do
      expect(build(:nerd)).to be_valid
    end

    it { should validate_presence_of(:email) }

    it { should have_many(:link_likes) }
    it { should have_many(:liked_links) }
    it { should have_many(:links) }
  end

  describe '#from_google' do
    it 'should create a user when email is not in use yet' do
      expect(Nerd.count).to eq(0)

      nerd = Nerd.from_google(**google_data)

      expect(Nerd.count).to eq(1)
      expect(nerd.persisted?).to eq(true)
      expect(Nerd.first).to eq(nerd)
    end

    it 'should enrich a user with google data when an email is already in use' do
    end
  end
end
