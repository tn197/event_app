class AddUserIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :user_id, :bigint, foreign_key: true
  end
end
