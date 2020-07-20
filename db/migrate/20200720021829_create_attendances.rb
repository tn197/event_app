class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.integer :guest_id
      t.integer :event_id
      t.string :entry
      t.text :comment

      t.timestamps
    end
  end
end
