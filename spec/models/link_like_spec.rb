# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LinkLike, type: :model do
  it 'has a valid factory' do
    expect(build(:link_like)).to be_valid
  end
  subject { FactoryBot.create(:link_like) }

  it { should validate_uniqueness_of(:nerd_id).scoped_to(:link_id) }
  it { should validate_uniqueness_of(:link_id).scoped_to(:nerd_id) }

  it { should belong_to(:nerd) }
  it { should belong_to(:link) }
end
