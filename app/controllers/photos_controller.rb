class PhotosController < ApplicationController
  before_filter :authorize

  def index
  	@photos = Photo.all
  end

  def new
  end

  def show
  end

  def create
  	@photo = Photo.new
  	respond_to do |format|
  	  if @photo.save
  	  	#something cool
  	  else
  	  	#something not cool
  	  end
  	end
  end

  def destroy

  end
end
