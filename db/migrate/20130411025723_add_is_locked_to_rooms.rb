class AddIsLockedToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :password, :string
  end
end
