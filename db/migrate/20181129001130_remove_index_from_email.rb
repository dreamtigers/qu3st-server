class RemoveIndexFromEmail < ActiveRecord::Migration[5.2]
  def change
    remove_index :teams, column: :email, unique: true
  end
end
