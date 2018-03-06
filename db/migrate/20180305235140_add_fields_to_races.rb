class AddFieldsToRaces < ActiveRecord::Migration[5.1]
  def change
    add_column :races, :adj3, :integer
    add_column :races, :adj4, :integer
    add_column :races, :adj5, :integer
    add_column :races, :adj6, :integer
  end
end
