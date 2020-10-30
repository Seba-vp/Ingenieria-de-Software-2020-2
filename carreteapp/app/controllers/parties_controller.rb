class PartiesController < ApplicationController
  
  def index 
    @parties = Party.all
  end

  def myparties
    #Person.where(name: 'Spartacus', rating: 4).select("field1, field2, field3")
    #Post.find_by name: 'Spartacus', rating: 4
    #Model.find_by(name: "Bob")
    
    @parties = Party.where(id_creator: current_user.id)
    @user = current_user
  end
  
  def new
    @party = Party.new
   
  end

  def create
    @user_id = current_user.id
    @parties_params = params.require(:party).permit(:title, :description, :address, :picture, :id_comuna, :base_cost, :total_cost, :max_cap, :date , :date_final)
    @parties_params[:id_creator] = current_user.id
  
    @party = Party.create(@parties_params)
    
    if @party.save

      redirect_to parties_myparties_path, notice: "Carrete creado correctamente."
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
