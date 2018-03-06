class AddFieldToStat < ActiveRecord::Migration[5.1]
  def change
    add_column :stats, :character_id, :integer
  end
end
