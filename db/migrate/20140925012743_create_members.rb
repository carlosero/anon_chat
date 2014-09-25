class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members, :id => false  do |t|
      t.references :user, index: true
      t.references :chat, index: true

      t.timestamps
    end
  end
end
