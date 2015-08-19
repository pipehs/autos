class PartesController < ApplicationController
  def index
    @partes = Parte.all
    @autos = Auto.all
  end

  def new
    @parte = Parte.new
  end

  def create

    @parte = Parte.new(nombre: params[:parte][:nombre],
             cantidad: params[:parte][:cantidad],
             auto_id: params[:parte][:auto_id])
    if @parte.save
      redirect_to "/partes/index", :notice => "La pieza ha sido agregada";
    else
      render :new
    end
  end

  def show
    @parte = Parte.find(params[:id])
  end

  def edit
    @parte = Parte.find(params[:id])
  end

  def update
    @parte = Parte.find(params[:id])
    @parte.nombre = params[:parte][:nombre]
    @parte.cantidad = params[:parte][:cantidad]
    @parte.auto_id = params[:parte][:auto_id]

    if @parte.save
      redirect_to "/partes/index", :notice => "La pieza ha sido modificada";
    else
      render :edit
    end
  end

  def destroy
    @parte = Parte.find(params[:id]);
    if @parte.destroy()
        redirect_to "/partes/index", :notice => "La pieza ha sido eliminada";
    else
        redirect_to "/partes/index", :notice => "La pieza NO ha podido ser eliminada";
    end
  end
end
