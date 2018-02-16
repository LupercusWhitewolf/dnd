class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :type
      t.string :name
      t.integer :weight
      t.integer :cost

      t.timestamps
    end
  end
end
