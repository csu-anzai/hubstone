class AddBasketToAppartment < ActiveRecord::Migration[5.2]
  def change
    add_column :appartements, :basket, :boolean
  end
end
