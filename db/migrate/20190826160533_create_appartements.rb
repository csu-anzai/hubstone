class CreateAppartements < ActiveRecord::Migration[5.2]
  def change
    create_table :appartements do |t|
      t.string :livraison
      t.boolean :actabilite
      t.string :localisation
      t.integer :prix

      t.timestamps
    end
  end
end
