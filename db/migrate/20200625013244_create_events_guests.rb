class CreateEventsGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :events_guests do |t|
      t.integer :event_id, null: false
      t.integer :guest_id, null: false

      t.timestamps
    end
  end
end
