class AddColumnContributionAuFinancementToSimulations < ActiveRecord::Migration[5.2]
  def change
    add_column :simulations, :contribution_financement, :string, array: true, default: []
  end
end
