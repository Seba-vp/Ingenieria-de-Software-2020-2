class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedbacks_params = params.require(:feedback).permit(:comment, :stars, :service_id)
    @feedback = Feedback.create(@feedbacks_params)
    
    if @feedback.save

      redirect_to feedbacks_new_path, notice: "Usuario creado correctamente."
    else
      redirect_to feedbacks_new_path, notice: "Error al crear el usuario."

    end

  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def edit
    @feedback = Feedback.find(params[:id])

  end

  def update
    @feedback = Feedback.find(params[:id])
    @feedbacks_params = params.require(:feedback).permit(:comment, :stars, :service_id)


    if @feedback.update(@feedbacks_params)

      redirect_to feedback_path(@feedback.id), notice: "Usuario editado correctamente."
    else
      redirect_to feedback_edit_path(@feedback.id), notice: "Error al editar el usuario."

    end

  end

  def delete
    @feedback = Feedback.find(params[:id])
    @feedback.destroy

    redirect_to feedbacks_index_path

  end
end
