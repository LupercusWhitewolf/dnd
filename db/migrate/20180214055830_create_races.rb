class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :strmin
      t.integer :strmax
      t.integer :dexmin
      t.integer :dexmax
      t.integer :conmin
      t.integer :conmax
      t.integer :intmin
      t.integer :intmax
      t.integer :wismin
      t.integer :wismax
      t.integer :chamin
      t.integer :chamax
      t.integer :adj1
      t.integer :adj2

      t.timestamps
    end
  end
end
