class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def myservices    
    @services = Service.where(id_creador: current_user.id)
    @user = current_user
  end
  
  def new
    @service = Service.new
  end

  def create
    @services_params = params.require(:service).permit(:name, :description, :max_cap, :picture, :stars, :id_comuna, :price)
    @services_params[:id_creador] = current_user.id
    @service = Service.create(@services_params)
    
    if @service.save

      redirect_to services_new_path, notice: "Servicio creado correctamente."
    else
      redirect_to services_new_path, notice: "Error al crear el servicio."

    end

  end

  def show
    @service = Service.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])

  end

  def update
    @service = Service.find(params[:id])
    @services_params = params.require(:service).permit(:name, :age, :phone, :picture, :id_comuna, :service_enable, :password)


    if @service.update(@services_params)

      redirect_to service_path(@service.id), notice: "Servicio editado correctamente."
    else
      redirect_to service_edit_path(@service.id), notice: "Error al editar el servicio."

    end

  end

  def delete
    @service = Service.find(params[:id])
    @service.destroy

    redirect_to services_index_path

  end


  
end
