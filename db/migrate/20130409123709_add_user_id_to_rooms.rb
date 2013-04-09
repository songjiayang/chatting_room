class AddUserIdToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :user_id, :integer
    Room.update_all({user_id:(User.first.id)})
  end
end
