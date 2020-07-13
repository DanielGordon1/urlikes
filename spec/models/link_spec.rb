# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Link, type: :model do
  let(:nerd) { build(:nerd) }
  let(:link) { build(:link) }
  let(:like) { build(:link_like, link: link, nerd: nerd) }

  describe 'valid records' do
    it 'has a valid factory' do
      expect(build(:link)).to be_valid
    end
    subject { FactoryBot.create(:link) }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:url) }

    it { should validate_uniqueness_of(:title) }
    it { should validate_uniqueness_of(:url) }

    it { should have_many(:link_likes) }
    it { should have_many(:liking_nerds) }
  end

  describe '#like_count' do
    it 'should return the amount of likes this link has received' do
      expect(link.like_count).to eq(0)

      like.save

      expect(link.like_count).to eq(1)
    end
  end
end
