class MoveRememberTokenFromUsersToActiveSessions < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :remember_token
    add_column :active_sessions, :remember_token, :string, null: false

    add_index :active_sessions, :remember_token, unique: true
  end
end
