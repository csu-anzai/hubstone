class CreateSimulations < ActiveRecord::Migration[5.2]
  def change
    create_table :simulations do |t|
      t.references :user, foreign_key: true
      t.references :client, foreign_key: true
      t.references :appartement, foreign_key: true

      t.timestamps
    end
  end
end
