class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @users_params = params.require(:user).permit(:name, :age, :phone, :picture, :id_comuna, :service_enable, :password)
    @user = User.create(@users_params)
    
    if @user.save

      redirect_to users_new_path, notice: "Usuario creado correctamente."
    else
      redirect_to users_new_path, notice: "Error al crear el usuario."

    end

  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    @users_params = params.require(:user).permit(:name, :age, :phone, :picture, :id_comuna, :service_enable, :password)


    if @user.update(@users_params)

      redirect_to user_path(@user.id), notice: "Usuario editado correctamente."
    else
      redirect_to user_edit_path(@user.id), notice: "Error al editar el usuario."

    end

  end

  def delete
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_index_path

  end
end
