class AddColumnsToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :statut_marital, :string
    add_column :clients, :parts_fiscales, :integer
    add_column :clients, :revenu_net_imposable, :float
  end
end
