class ChangeTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :user_favorites, :lists_users
  end
end
