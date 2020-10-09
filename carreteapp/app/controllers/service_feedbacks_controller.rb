class ServiceFeedbacksController < ApplicationController

  def index
    @service_feedbacks = Service_feedback.all
  end

  def new
    @service_feedbacks = Service_feedbacks.new
  end

  def create
    @service_feedbacks_params = params.require(:service_feedbacks).permit(:name, :age, :phone, :picture, :id_comuna, :service_enable, :password)
    @service_feedbacks = Service_feedbacks.create(@service_feedbackss_params)
    
    if @service_feedbacks.save

      redirect_to service_feedbackss_new_path, notice: "Feedback creado correctamente."
    else
      redirect_to service_feedbackss_new_path, notice: "Error al crear el feedback."

    end

  end

  def show
    @service_feedbacks = Service_feedbacks.find(params[:id])
  end

  def edit
    @service_feedbacks = Service_feedbacks.find(params[:id])

  end

  def update
    @service_feedbacks = Service_feedbacks.find(params[:id])
    @service_feedbackss_params = params.require(:service_feedbacks).permit(:name, :age, :phone, :picture, :id_comuna, :service_enable, :password)


    if @service_feedbacks.update(@service_feedbackss_params)

      redirect_to service_feedbacks_path(@service_feedbacks.id), notice: "Feedback editado correctamente."
    else
      redirect_to service_feedbacks_edit_path(@service_feedbacks.id), notice: "Error al editar el feedback."

    end

  end

  def delete
    @service_feedbacks = Service_feedbacks.find(params[:id])
    @service_feedbacks.destroy

    redirect_to service_feedbackss_index_path

  end
end
