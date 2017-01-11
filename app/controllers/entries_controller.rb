class EntriesController < ApplicationController

  before_action :set_feed, only: [:index, :show]

  def index
    @entries = @feed.entries.order('published desc')
  end

  def show
    @entry = @feed.entries.find(params[:id])
  end

  private
  def set_feed
    @feed = Feed.find(params[:feed_id])
  end
end
