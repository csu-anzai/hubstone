class RemoveBasketFromAppartements < ActiveRecord::Migration[5.2]
  def change
    remove_column :appartements, :basket, :boolean
  end
end
