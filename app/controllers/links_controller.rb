# frozen_string_literal: true

# Controller that handles the link objects
class LinksController < ApplicationController
  def index
    @links = Url.group_by_day(:created_at).order(:like_count)
  end
end
