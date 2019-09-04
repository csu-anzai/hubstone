class SimulationsController < ApplicationController


def new
  @appartement = Appartement.find(params[:appartement_id])
  @simulation = Simulation.new
  end

  def create
    @simulation = Simulation.new(simulation_params)
    @simulation.user = current_user
    @simulation.appartement = Appartement.find(params[:appartement_id])
    # @simulation.client = Client.find(params[:client_id])
#    @simulation.save
    @simulation.details_simulations = calculs_simulation(@simulation)
    @simulation.effort_treso_tot = @simulation.details_simulations.sum {|h| JSON.parse(h.gsub('=>',':'))["effort_treso"] }
    @simulation.effort_treso_moyen = @simulation.effort_treso_tot / @simulation.duree
    @simulation.economie_impot_tot = @simulation.details_simulations.sum {|h| JSON.parse(h.gsub('=>',':'))["economie_impot"] }
    @simulation.loyers_tot = @simulation.details_simulations.sum {|h| JSON.parse(h.gsub('=>',':'))["loyer_revalo"] }
    @simulation.benefice_net = @simulation.revalo_prix - @simulation.effort_treso_tot
    @simulation.apport = @simulation.appartement.prix - @simulation.emprunt
    @simulation.contribution_financement = calculs_contribution_au_financement(@simulation)
    if @simulation.save
      redirect_to simulation_path(@simulation)
    else
      render :new
    end
  end

  def show
    @simulation = Simulation.find(params[:id])
    @capital_net = @simulation.details_simulations.map { |h| JSON.parse(h.gsub('=>', ':'))["capital_net"]}
    @contribution_financement = @simulation.contribution_financement.map { |h| JSON.parse(h.gsub('=>', ':'))}[0]
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
    params.require(:simulation).permit(:client_id, :emprunt, :duree, :taux_credit, :adi, :revalo_prix, :revalo_loyers)
  end

def calculs_simulation(simulation)
  taux_interet = simulation.taux_credit.to_f + simulation.adi.to_f
  loan = FinanceMath::Loan.new(nominal_rate: taux_interet, duration: simulation.duree, amount: simulation.emprunt)
  capital_restant_du = simulation.emprunt
  prix = simulation.appartement.prix
  mensualite = loan.pmt
  tmi = simulation.client.tmi.to_f
  array = []
  counter = 1
  simulation.duree.times do |s|
    charges = simulation.appartement.charges / 12
    loyers = simulation.appartement.loyer
    interets = (capital_restant_du.to_f * taux_interet.to_f) / 1200
    fiscalite = (tmi.to_f + 17.2 / 100) * (loyers.to_f - charges.to_f - interets.to_f)
    if (counter / 12) < 9
      eco_impots = (prix * 2 / 100) / 12
    elsif (counter / 12) < 12
      eco_impots = prix * 1 / 1200
    else
      eco_impots = 0
    end
    s = {
      "mensualite" => mensualite,
      "interets" => interets,
      "principal" => mensualite - interets,
      "capital_restant_du" => capital_restant_du - mensualite,
      "loyers_bruts" => loyers,
      "charges" => charges,
      "RF_nets" => loyers - (charges + interets),
      "fiscalite" => fiscalite,
      "economie_impot" => eco_impots,
      "effort_treso" => (mensualite + charges + fiscalite) - (loyers + eco_impots),
      "prix_revalo" => simulation.appartement.prix * simulation.revalo_prix,
      "loyer_revalo" => simulation.appartement.loyer * simulation.revalo_loyers,
      "capital_net" => simulation.emprunt - capital_restant_du
    }
  array << s
  capital_restant_du = capital_restant_du - s["principal"]
  counter += 1
  end
  return array
  end


def calculs_contribution_au_financement(simulation)
  [{
    "economie_impots" => simulation[:economie_impot_tot],
    "loyers" => simulation[:loyers_tot],
    "effort_epargne" => simulation[:effort_treso_tot]
   }]
end

end
