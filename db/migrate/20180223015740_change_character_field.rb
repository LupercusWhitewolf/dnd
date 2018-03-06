class ChangeCharacterField < ActiveRecord::Migration[5.1]
  def change
    rename_column :characters, :class, :prof
  end
end
