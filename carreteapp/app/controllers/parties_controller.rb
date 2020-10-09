class PartiesController < ApplicationController
  
  def index 
    @parties = Party.all
  end

  def new
    @party = Party.new
  end

  def create
    @parties_params = params.require(:party).permit(:title, :description, :address, :picture, :id_comuna, :base_cost, :total_cost, :max_cap, :date , :date_final)
    @party = Party.create(@parties_params)
    
    if @party.save

      redirect_to parties_new_path, notice: "Carrete creado correctamente."
    else
      redirect_to parties_new_path, notice: "Error al crear el carrete."

    end

  end

  def show
    @party = Party.find(params[:id])
  end

  def edit
    @party = Party.find(params[:id])

  end

  def update
    @party = Party.find(params[:id])
    @parties_params = params.require(:party).permit(:title, :description, :address, :picture, :id_comuna, :base_cost, :total_cost, :max_cap, :date , :date_final)


    if @party.update(@parties_params)

      redirect_to party_path(@party.id), notice: "Carrete editado correctamente."
    else
      redirect_to party_edit_path(@party.id), notice: "Error al editar el carrete."

    end

  end

  def delete
    @party = Party.find(params[:id])
    @party.destroy

    redirect_to parties_index_path

  end
end
