class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.boolean :is_comments_open
      t.string :link
      t.string :hashtag
      
      t.timestamps
    end
  end
end
