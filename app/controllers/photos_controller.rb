class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to statics_path(page: :gallery), notice: 'Photo was successfully created.'
    else
      render :new
    end
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to statics_path(page: :gallery)
  end

  private
    def set_photo
      @photo = Photo.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:picture, :describtion)
    end
end
