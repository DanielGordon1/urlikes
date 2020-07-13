# frozen_string_literal: true

# Model used to indicate a like being stored on a link by a Nerd
class LinkLike < ApplicationRecord
  belongs_to :nerd
  belongs_to :link
  validates_uniqueness_of :nerd_id, scope: :link_id
  validates_uniqueness_of :link_id, scope: :nerd_id
end
