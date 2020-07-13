# frozen_string_literal: true

# Controller that handles the link objects
class LinksController < ApplicationController
  def index
    @links_per_day = Link.sorted_by_votes.group_by { |link| link.created_at.day }
    @current_liked_links = current_nerd.liked_links
  end
end
