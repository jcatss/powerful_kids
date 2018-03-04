class StaticsController < ApplicationController

  def index
    @page = params[:page] || 'home'
    if @page == "gallery"
      @photos = Photo.all
      @videos = Video.all
    end
  end
end
