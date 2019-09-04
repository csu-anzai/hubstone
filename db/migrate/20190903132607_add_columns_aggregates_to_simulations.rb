class AddColumnsAggregatesToSimulations < ActiveRecord::Migration[5.2]
  def change
    add_column :simulations, :apport, :float
    add_column :simulations, :effort_treso_tot, :float
    add_column :simulations, :effort_treso_moyen, :float
    add_column :simulations, :benefice_net, :float
    add_column :simulations, :economie_impot_tot, :float
    add_column :simulations, :loyers_tot, :float
    add_column :simulations, :capital_net, :float
  end
end
