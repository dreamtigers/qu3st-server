class AddUsernameToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :username, :string
    add_index :teams, :username, unique: true
  end
end
