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
  		redirect_to root_path, :notice => "El auto ha sido agregado";
  	else
  		render :new
  	end
  end

  def edit
  	@auto = Auto.find(params[:id])
  end

  def update
  	@auto = Auto.find(params[:id])
  	@auto.marca = params[:auto][:marca]
  	@auto.modelo = params[:auto][:modelo]

  	if @auto.save
  		redirect_to root_path, :notice => "El auto ha sido modificado";
  	else
  		render :edit
  	end
  end

  def destroy
  	@auto = Auto.find(params[:id]);
	if @auto.destroy()
	    redirect_to root_path, :notice => "El auto ha sido eliminado";
	else
	    redirect_to root_path, :notice => "El auto NO ha podido ser eliminado";
	end
  end

end
