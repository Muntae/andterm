class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      t.integer :post_id
      t.string :reply_content
      t.string :reply_name

      t.timestamps null: false
    end
  end
end
