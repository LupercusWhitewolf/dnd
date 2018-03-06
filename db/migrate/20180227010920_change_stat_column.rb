class ChangeStatColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :stats, :name, :str
    rename_column :stats, :score, :dex
    change_column :stats, :str, :integer
  end
end
