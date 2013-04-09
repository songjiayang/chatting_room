class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.text :content
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
    add_index :sms, :room_id
    add_index :sms, :user_id
  end
end
