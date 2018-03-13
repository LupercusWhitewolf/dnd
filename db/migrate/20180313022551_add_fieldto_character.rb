class AddFieldtoCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :hitpoints, :integer
  end
end
