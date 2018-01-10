class StaticsController < ApplicationController
  before_action :set_static, only: [:show, :edit, :update, :destroy]

  # GET /statics
  # GET /statics.json
  def index
    @page = params[:page]
    if @page == "galery"
      @photos = Photo.all
      @videos = Video.all
    end
  end
end
