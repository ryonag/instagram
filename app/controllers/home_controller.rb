class HomeController < ApplicationController
  def index
    @photos = Photo.all
    render :timeline if user_signed_in?
  end
end
