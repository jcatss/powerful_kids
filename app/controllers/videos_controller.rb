class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)

    if @video.save
      redirect_to statics_path(page: :gallery), notice: 'Video was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @video.destroy
    respond_to do |format|
      format.html {  redirect_to statics_path(page: :gallery)}
      format.json { head :no_content }
    end
  end


  private
   def set_video
      @video = Video.find(params[:id])
   end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:name, :body)
    end
end
