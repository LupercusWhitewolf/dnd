class AddColumnsToStats < ActiveRecord::Migration[5.1]
  def change
    add_column :stats, :con, :integer
    add_column :stats, :int, :integer
    add_column :stats, :wis, :integer
    add_column :stats, :cha, :integer
  end
end
