class AddCoordinatesToAppartements < ActiveRecord::Migration[5.2]
  def change
    add_column :appartements, :latitude, :float
    add_column :appartements, :longitude, :float
  end
end
