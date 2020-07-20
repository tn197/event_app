class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :user_id, null: false
      t.integer :guest_id, null: false
      t.integer :event_id, null: false
      t.string :entry, null: false
      t.text :comment

      t.timestamps
    end
  end
end
