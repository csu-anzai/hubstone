class AddColumnImageToAppartement < ActiveRecord::Migration[5.2]
  def change
    add_column :appartements, :image, :string
  end
end
