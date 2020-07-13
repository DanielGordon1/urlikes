# frozen_string_literal: true

# Link model to be created and liked by Nerds.
class Link < ApplicationRecord
  has_many :link_likes, dependent: :destroy
  has_many :liking_nerds, through: :link_likes, source: :nerd

  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true, format: { with: URI::DEFAULT_PARSER.make_regexp }

  scope :sorted_by_votes, -> { joins(:link_likes).order('COUNT(link_likes.id) DESC').group('links.id') }

  def like_count
    link_likes.count
  end
end
