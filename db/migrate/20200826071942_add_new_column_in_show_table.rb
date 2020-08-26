class AddNewColumnInShowTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :shows, :channel_id, :integer
  end
end
