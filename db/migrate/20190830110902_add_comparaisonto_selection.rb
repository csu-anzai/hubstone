class AddComparaisontoSelection < ActiveRecord::Migration[5.2]
  def change
    add_column :selections, :comparaison, :boolean, default: false
  end
end
