class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string "title"
      t.text "content"
     
      t.datetime "created_at"
      t.datetime "updated_at"

      t.timestamps
    end
  end
end
