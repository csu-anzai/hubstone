class AddColumnsToSimulations < ActiveRecord::Migration[5.2]
  def change
    add_column :simulations, :regime_fiscale, :string
    add_column :simulations, :investissement_credit, :string
  end
end
