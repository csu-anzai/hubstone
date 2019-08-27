class AddAdresseToAppartement < ActiveRecord::Migration[5.2]
  def change
     add_column :appartements, :adresse, :string
  end
end
