class AddColumntoAppartement < ActiveRecord::Migration[5.2]
  def change
    add_column :appartements, :nom_programme, :string
  end
end
