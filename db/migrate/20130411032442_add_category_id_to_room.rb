class AddCategoryIdToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :category_id, :integer
  end
end
