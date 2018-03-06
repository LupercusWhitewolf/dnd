class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :pname
      t.string :cname
      t.string :class
      t.string :race
      t.integer :level
      t.integer :exp
      t.integer :exptolvl
      t.string :alignment
      t.string :religion
      t.string :pofo
      t.string :gender
      t.string :hair
      t.string :eyes
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
