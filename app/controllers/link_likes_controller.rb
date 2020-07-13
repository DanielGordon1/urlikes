# frozen_string_literal: true

# Controller that handles link_like objects
class LinkLikesController < ApplicationController
  def create
    @link_like = LinkLike.new(nerd: current_nerd, link: link)
    respond_to do |format|
      if @link_like.save
        @current_liked_links = current_nerd.liked_links
        format.js { flash.now[:notice] = 'Liked ✅' }
      else
        format.js { flash.now[:alert] = 'Something went wrong ⛔️' }
      end
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link_like = @link.link_likes.where(nerd_id: current_nerd.id).first
    respond_to do |format|
      if @link_like.destroy
        @current_liked_links = current_nerd.liked_links
        format.js { flash.now[:notice] = 'Unliked ✅' }
      else
        format.js { flash.now[:alert] = 'Something went wrong ⛔️' }
      end
    end
  end

  private

  def link
    @link ||= Link.find(params[:link_id]) || Link.find(params[:id])
  end
end
