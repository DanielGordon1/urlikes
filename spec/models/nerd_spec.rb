# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Nerd, type: :model do
  describe 'valid records' do
    it 'has a valid factory' do
      expect(build(:nerd)).to be_valid
    end

    it { should validate_presence_of(:email) }

    it { should have_many(:link_likes) }
    it { should have_many(:liked_links) }
    it { should have_many(:links) }
  end
end
