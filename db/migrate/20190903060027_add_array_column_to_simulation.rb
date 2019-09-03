class AddArrayColumnToSimulation < ActiveRecord::Migration[5.2]
  def change
    add_column :simulations, :details_simulations, :string, array: true, default: []
  end
end

