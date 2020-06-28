class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.integer :guest_id, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
