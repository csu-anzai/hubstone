class AddColumnsToAppartements < ActiveRecord::Migration[5.2]
  def change
    add_column :appartements, :lot, :string
    add_column :appartements, :étage, :string
    add_column :appartements, :typologie, :string
    add_column :appartements, :disponibilité, :string
    add_column :appartements, :promoteur, :string
    add_column :appartements, :logo_promoteur, :string
    add_column :appartements, :département, :integer
  end
end
