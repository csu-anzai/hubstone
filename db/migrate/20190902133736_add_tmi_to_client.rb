class AddTmiToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :tmi, :float
  end
end
