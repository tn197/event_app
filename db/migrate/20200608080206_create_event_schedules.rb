class CreateEventSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :event_schedules do |t|
      t.integer :event_id
      t.datetime :targer_at

      t.timestamps
    end
  end
end
