class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :nick
      t.string :email
      t.boolean :anon

      t.timestamps
    end
  end
end
