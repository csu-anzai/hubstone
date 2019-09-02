class AddColumnToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :image, :string
  end
end
