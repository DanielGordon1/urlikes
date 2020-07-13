# frozen_string_literal: true

# Controller that handles the link objects
class LinksController < ApplicationController
  skip_before_action :authenticate_nerd!

  def index
    set_variables
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.nerd = current_nerd
    if @link.save
      redirect_to root_path
    else
      set_variables
      render :index
    end
  end

  private

  def set_variables
    @links_per_day = Link.sorted_by_votes.group_by { |link| link.created_at.day }
    @current_liked_links = current_nerd&.liked_links || []
  end

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
