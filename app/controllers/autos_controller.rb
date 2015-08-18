class AutosController < ApplicationController
  def index
  	@autos = Auto.all
  end

  def show
  	@auto = Auto.find(params[:id])
  end

end
