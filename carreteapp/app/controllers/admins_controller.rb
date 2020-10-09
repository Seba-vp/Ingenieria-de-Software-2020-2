class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admins_params = params.require(:admin).permit(:name,:password)
    @admin = Admin.create(@admins_params)
    
    if @admin.save

      redirect_to admins_new_path, notice: "Admin creado correctamente."
    else
      redirect_to admins_new_path, notice: "Error al crear el admin."

    end

  end

  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:id])

  end

  def update
    @admin = Admin.find(params[:id])
    @admins_params = params.require(:admin).permit(:name,:password)


    if @admin.update(@admins_params)

      redirect_to admin_path(@admin.id), notice: "Admin editado correctamente."
    else
      redirect_to admin_edit_path(@admin.id), notice: "Error al editar el admin."

    end

  end

  def delete
    @admin = Admin.find(params[:id])
    @admin.destroy

    redirect_to admins_index_path

  end
end
