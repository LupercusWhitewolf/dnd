class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :equipment, :type, :uses
  end
end
