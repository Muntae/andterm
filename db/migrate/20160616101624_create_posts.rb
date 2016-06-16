class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :post_title
      t.string :post_name
      t.string :post_pwd
      t.text :post_content

      t.timestamps null: false
    end
  end
end
