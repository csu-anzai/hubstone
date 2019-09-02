class SimulationsController < ApplicationController


def new
  @simulation = Simulation.new
  end

  def create
    @simulation = Simulation.new(simulation_params)
    @simulation.user = current_user
    @simulation.appartement = Appartement.find(params[:appartement_id])
    raise
    @simulation.save


end

  def show
    @simulation = Simulation.find(params[:id])
  end

  def destroy
    @simulation = Simulation.find(params[:id])
    @simulation.destroy
    redirect_to simulations_path
  end

private

  def simulation_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:simulation).permit(:name, :address)
  end
end
