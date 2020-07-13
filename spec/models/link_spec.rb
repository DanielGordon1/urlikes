# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Link, type: :model do
  describe 'valid records' do
    it 'has a valid factory' do
      expect(build(:link)).to be_valid
    end

    it { should validate_presence_of(:title) }

    it { should have_many(:link_likes) }
    it { should have_many(:liking_nerds) }
  end
end
