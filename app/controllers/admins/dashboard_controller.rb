class Admins::DashboardController < ApplicationController
  def index
    @users = User.all
    @brokers = Broker.all.order(approved: :desc)    #sort by status
  end

  def update
    @broker = Broker.find(params[:id])
    @broker.update(:approved=>true)

    redirect_to admins_authenticated_root_path, notice: "user was successfully approved."
  end
  
  private
  # Only allow a list of trusted parameters through.
  def broker_params
    params.require(:broker).permit(:approved, :email) 
  end

end

