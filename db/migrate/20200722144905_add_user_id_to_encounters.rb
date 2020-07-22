class AddUserIdToEncounters < ActiveRecord::Migration
  def change
    add_column :encounters, :user_id, :integer
  end
end
