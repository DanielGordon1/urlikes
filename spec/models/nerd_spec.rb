# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Nerd, type: :model do
  describe 'valid records' do
    it 'has a valid factory' do
      expect(build(:nerd)).to be_valid
    end
  end
end
