class AddBrowserUuidToGuests < ActiveRecord::Migration[6.0]
  def change
    add_column :guests, :browser_uuid, :text
  end
end
