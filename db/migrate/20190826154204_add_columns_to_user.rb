class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prenom, :string
    add_column :users, :nom, :string
    add_column :users, :carte_t, :string
    add_column :users, :raison_sociale, :string
  end
end
