# frozen_string_literal: true

# Link model to be created and liked by Nerds.
class Link < ApplicationRecord
  has_many :link_likes
  has_many :liking_nerds, through: :link_likes, source: :nerd

  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true, format: { with: URI::DEFAULT_PARSER.make_regexp }
end
