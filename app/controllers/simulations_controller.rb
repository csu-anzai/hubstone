class SimulationsController < ApplicationController


def new
  @appartement = Appartement.find(params[:appartement_id])
  @simulation = Simulation.new
  end

  def create
    #raise params.inspect
    duree_pret = params[:duree_pret]
    @simulation = Simulation.new(simulation_params)
    @simulation.user = current_user
    @simulation.appartement = Appartement.find(params[:appartement_id])
    @simulation.client = params [:client_id]
    @simulation.details_simulations = calculs_simulation(@simulation)
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

def calculs_simulation(simulation)
  taux_interet = simulation.taux_credit + simulation.adi
  loan = FinanceMath::Loan.new(nominal_rate: taux_interet, duration: simulation.duree, amount: simulation.emprunt)
  capital_restant_du = simulation.emprunt
  prix = simulation.appartement.prix
  mensualite = loan.pmt
  interets = (capital_restant_du * taux_interet) / 12
  loyers = simulation.appartement.loyer
  charges = simulation.appartement.charges
  tmi = simulation.client.tmi
  fiscalite = (tmi + 17.2 / 100) * (loyers - charges - interets)
  array = []
  simulation.duree.times do |s|
    s = {
      mensualite: mensualite,
      interets: interets,
      principal: mesnualite - interets,
      capital_restant_du: capital_restant_du - mensualite,
      loyers_bruts: loyers,
      charges: charges,
      RF_nets: loyers - (charges + interets),
      fiscalite: fiscalite,
      economie_impot: prix * ((s / 12) < 9 ? 2 : 1),
      effort_treso: (loyers + (prix * ((s / 12) < 9 ? 2 : 1))) - (mensualite + charges + fiscalite),
      prix_revalo: simulation.appartement.prix * simulation.revalo_prix,
      loyer_revalo: simulation.appartement.loyer * simulation.revalo_loyer,
    }
  array << s
  capital_restant_du = capital_restant_du - s[:principal]
  end
  return array
end
