class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :cost
      t.integer :weight
      t.string :size
      t.string :type
      t.integer :speed
      t.string :damagesm
      t.string :damagel
      t.integer :rof
      t.integer :ranges
      t.integer :rangem
      t.integer :rangel

      t.timestamps
    end
  end
end
