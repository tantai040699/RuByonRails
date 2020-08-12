class FeedAlbumsController < ApplicationController
  def index
    @albums = Album.order(:created_at)
  end
end
