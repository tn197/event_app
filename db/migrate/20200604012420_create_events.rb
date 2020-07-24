class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :uuid, null: false
      t.string :title, null: false
      t.text :content
      t.datetime :target_at

      t.timestamps
    end
  end
end
