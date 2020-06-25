class CreateEventsGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :events_guests do |t|
      t.integer :event_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
