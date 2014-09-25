class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.references :user, index: true
      t.string :name
      t.string :chat_type
      t.string :encrypted_password
      t.datetime :last_activity

      t.timestamps
    end
  end
end
