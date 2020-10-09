class InterestedsController < ApplicationController
  def index
    @interesteds = Interested.all
  end

  def new
    @interested = Interested.new
  end

  def create
    @interesteds_params = params.require(:interested).permit(:user_id, :party_id, :willing_pay, :code)
    @interested = Interested.create(@interesteds_params)
    
    if @interested.save

      redirect_to interesteds_new_path, notice: "Relacion creada correctamente."
    else
      redirect_to interesteds_new_path, notice: "Error al crear la relación."

    end

  end

  def show
    @interested = Interested.find(params[:id])
  end

  def edit
    @interested = Interested.find(params[:id])

  end

  def update
    @interested = Interested.find(params[:id])
    @interesteds_params = params.require(:interested).permit(:user_id, :party_id, :willing_pay, :code)


    if @interested.update(@interesteds_params)

      redirect_to interested_path(@interested.id), notice: "Relación editada correctamente."
    else
      redirect_to interested_edit_path(@interested.id), notice: "Error al editar la relación."

    end

  end

  def delete
    @interested = Interested.find(params[:id])
    @interested.destroy

    redirect_to interesteds_index_path

  end
end
