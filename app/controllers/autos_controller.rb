class AutosController < ApplicationController
  def index
  	@autos = Auto.all
  end

  def show
  	@auto = Auto.find(params[:id])
  end

  def new
  	@auto = Auto.new
  end

  def create
  	@auto = Auto.new(marca: params[:auto][:marca],
  					 modelo: params[:auto][:modelo])
  	if @auto.save
  		redirect_to @auto
  	else
  		render :new
  	end
  end

end
