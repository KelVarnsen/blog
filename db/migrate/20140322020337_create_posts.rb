class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string "name"
      t.string "title"  
      t.text   "content"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer "post_id"


      t.timestamps
    end
  end
end
