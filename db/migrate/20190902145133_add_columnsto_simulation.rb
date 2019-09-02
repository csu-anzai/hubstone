class AddColumnstoSimulation < ActiveRecord::Migration[5.2]
  def change
    add_column :simulations, :emprunt, :float
    add_column :simulations, :duree, :integer
    add_column :simulations, :taux_credit, :float
    add_column :simulations, :adi, :float
    add_column :simulations, :revalo_prix, :float
    add_column :simulations, :revalo_loyers, :float
  end
end
