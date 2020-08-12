class FeedController < ApplicationController
  def index
    @photo = Photo.order(:created_at)
  end
  
end
