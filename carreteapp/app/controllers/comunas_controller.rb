class ComunasController < ApplicationController
  def index
    @comunas = Comuna.all
  end

  def new
    @comuna = Comuna.new
  end

  def create
    @comunas_params = params.require(:comuna).permit(:name)
    @comuna = Comuna.create(@comunas_params)
    
    if @comuna.save

      redirect_to comunas_new_path, notice: "Comuna creada correctamente."
    else
      redirect_to comunas_new_path, notice: "Error al crear la comuna."

    end

  end

  def show
    @comuna = Comuna.find(params[:id])
  end

  def edit
    @comuna = Comuna.find(params[:id])

  end

  def update
    @comuna = Comuna.find(params[:id])
    @comunas_params = params.require(:comuna).permit(:name)


    if @comuna.update(@comunas_params)

      redirect_to comuna_path(@comuna.id), notice: "Comuna editada correctamente."
    else
      redirect_to comuna_edit_path(@comuna.id), notice: "Error al editar la comuna."

    end

  end

  def delete
    @comuna = Comuna.find(params[:id])
    @comuna.destroy

    redirect_to comunas_index_path

  end
end
