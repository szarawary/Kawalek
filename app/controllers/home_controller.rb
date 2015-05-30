class HomeController < ApplicationController
  def index
    @today=Date.today
    @yesterday=Date.yesterday
    @time=Time.now
    @photos=Photo.all
  end
  
  def show
    @photo=Photo.find(params[:id])
  end
  
  def new
    @photo=Photo.new
  end
  
  def create
    Photo.create(photo_params)
    redirect_to photos_path
  end
  
  def photo_params
    params.require(:photo).permit(:name, :url)
  end
end
