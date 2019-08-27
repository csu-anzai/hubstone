class AddColumnsToAppartements < ActiveRecord::Migration[5.2]
  def change
    add_column :appartements, :lot, :string
    add_column :appartements, :etage, :string
    add_column :appartements, :typologie, :string
    add_column :appartements, :disponibilite, :string
    add_column :appartements, :promoteur, :string
    add_column :appartements, :logo_promoteur, :string
    add_column :appartements, :departement, :integer
  end
end
