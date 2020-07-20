class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :uuid
      t.string :title, null: false
      t.text :content, null: false
      t.datetime :target_at

      t.timestamps
    end
  end
end
