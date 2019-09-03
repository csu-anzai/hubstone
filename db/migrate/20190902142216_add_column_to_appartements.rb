class AddColumnToAppartements < ActiveRecord::Migration[5.2]
  def change
  	add_column :appartements, :scoring_prix, :integer
  	add_column :appartements, :scoring_rendement, :integer
  	add_column :appartements, :scoring_potentiel, :integer
  	add_column :appartements, :scoring_energie, :integer
  	add_column :appartements, :scoring_qualite, :integer
  	add_column :appartements, :scoring_amenagement, :integer
  	add_column :appartements, :scoring_dynamisme, :integer
  	add_column :appartements, :scoring_amenites, :integer
  	add_column :appartements, :scoring_accessibilite, :integer
  	add_column :appartements, :scoring_equipements, :integer
  end
end
