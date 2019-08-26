class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :prenom
      t.string :nom
      t.string :civilite

      t.timestamps
    end
  end
end
