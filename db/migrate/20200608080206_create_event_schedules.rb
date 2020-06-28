class CreateEventSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :event_schedules do |t|
      t.integer :event_id, null: false
      t.datetime :targer_at, null: false

      t.timestamps
    end
  end
end
