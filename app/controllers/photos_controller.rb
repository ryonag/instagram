class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    redirect_to action: 'new'
  end

  def photo_params
    params.require(:photo).permit(:content, :image, :user_id)
  end
end
