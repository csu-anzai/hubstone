class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :appartements, :localisation, :ville
  end
end
