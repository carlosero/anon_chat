class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, index: true
      t.references :chat, index: true
      t.text :message

      t.timestamps
    end
  end
end
