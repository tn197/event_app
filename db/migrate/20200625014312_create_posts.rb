class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :guest_id
      t.text :comment, null: false

      t.timestamps
    end
  end
end
