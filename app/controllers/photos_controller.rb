class PhotosController < ApplicationController
  before_filter :authorize

  def index
  	@photos = Photo.all
  end

  def new
    @photo = Photo.all
  end

  def show
    @photo = find_by_index
  end

  def create
  	@photo = Photo.new
  	if @photo.save
      redirect_to photos_path, notice: "The photo #{@photo.title} has been added."
    else
      render "new"
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path, notice: "The photo #{@photo.title} has been deleted."
  end

  private
    def photo_params
      params.require(:photo).permit(:title, :attachment)
    end
end
