class EntriesController < ApplicationController

  before_action :set_feed, :if => proc {params[:feed_id].present?}, only: :index

  def index
    if params[:q]
      @entries = Entry.ransack(params[:q]).result(distinct: true)
    else
      @entries = @feed.entries.order('published desc')
    end
  end

  def show
    @entry = @feed.entries.find(params[:id])
  end

  private
  def set_feed
    @feed = Feed.find(params[:feed_id])
  end
end
