class InterestedsController < ApplicationController

  #Sin U: Admin
  #Con U: Usuario
  
  def index
    @interesteds = Interested.all
  end

  def myinteresteds
    @interesteds = Interested.where(party_id: params[:id])
    @party = Party.find(params[:id])
    @total_amount = 0
    @users_names = []

    @interesteds.each do |interested|
      @total_amount += interested.willing_pay
      @users_names[interested.user_id] = User.find(interested.user_id).name
    end

    @diference = @party.total_cost - @total_amount
  end

  def postulaciones
    @postulaciones = Interested.where(user_id: current_user.id)
    @parties_names = []
    @postulaciones.each do |postulacion|
        @parties_names[postulacion.id] = Party.find(postulacion.party_id).title

      end
  end

  def invitations
    @party = Party.find(params[:id])
    @interesteds = Interested.where(party_id: params[:id]).order(:willing_pay)
    
    for interested in @interesteds do
      @interested_user = User.find(interested.user_id) 
      @invitation_code= String(@party.title) +'#'+ String(@party.id) +'#'+ String( @interested_user.name ) +'#'+ String(interested.id ) +'#'
      @interesteds_params = {}
      @interesteds_params[:code] = @invitation_code
      interested.update(@interesteds_params)

      UserMailer.code_email(@interested_user, @party.title, @invitation_code).deliver
    end

  end

  def unew
    @interested = Interested.new
    @user = current_user
    @party = Party.find(params[:id])
  end

  #Admin
  def create
    @interesteds_params = params.require(:interested).permit(:user_id, :party_id, :willing_pay, :code)
    @interested = Interested.create(@interesteds_params)
    if @interested.save
      redirect_to interesteds_new_path, notice: "Relacion creada correctamente."
    else
      redirect_to interesteds_new_path, notice: "Error al crear la relación."
    end
  end

 #Usuario  
  def ucreate
    @interesteds_params = params.require(:interested).permit(:willing_pay, :party_id)
    @interesteds_params[:user_id] = current_user.id
    @interesteds_params[:code] = 'null'
    @interested = Interested.create(@interesteds_params)

    if @interested.save
      #redirect_to interesteds_unew_path(id: ), notice: "Postulación creada correctamente."
      redirect_to parties_index_path, notice: "Postulación creada correctamente."
    
    else
      #redirect_to interesteds_unew_path(id: ), notice: "Error al postular."
      #talvez agregar parametro party a la ruta de abajo
      redirect_to interesteds_unew_path, notice: "Error al postular."
    end
  end

  

  def show
    if params
      #si lo llaman desde interesteds index
      @interested = Interested.find(params[:id])
    else
      #si lo llaman desde my interesteds
      @interested = Interested.find(params[:id])
    end
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
