class CreateArmors < ActiveRecord::Migration[5.1]
  def change
    create_table :armors do |t|
      t.string :name
      t.integer :cost
      t.integer :weight
      t.integer :ac

      t.timestamps
    end
  end
end
