class CreatePastvers < ActiveRecord::Migration
  def change
    create_table :pastvers do |t|
      
      t.string :name
      t.string :ftitle
      t.string :ltitle
      t.integer :length
      t.integer :month
      t.integer :day
      t.integer :hour
      t.integer :min

      t.timestamps null: false
    end
  end
end
