class ChangeColumnActabiliteAppartement < ActiveRecord::Migration[5.2]
  def change
    change_column :appartements, :actabilite, :string
  end
end
