class AddTaxeFonciereToAppartements < ActiveRecord::Migration[5.2]
  def change
    add_column :appartements, :taxe_fonciere, :float
  end
end
