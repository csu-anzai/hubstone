class AddColumnsLoyerEtChargesToAppartement < ActiveRecord::Migration[5.2]
  def change
    add_column :appartements, :loyer, :float
    add_column :appartements, :charges, :float
  end
end
