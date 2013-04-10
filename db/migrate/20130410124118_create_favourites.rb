class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
    add_index :favourites, :user_id
    add_index :favourites, :room_id
  end
end
