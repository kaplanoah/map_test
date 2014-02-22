class MapsController < ApplicationController
  def index
    @maps = Map.all
  end

  def show
    id = params[:id]
    @map = Map.find_by_id(id)
  end

  def new
  end

  def create
    parameters = params.require(:map).permit(:address, :lat, :lng)
    @map = Map.create(parameters)
    
    respond_to do |f|
      f.html { redirect_to :maps }
      f.json { render :json => @map }
    end
  end

end
