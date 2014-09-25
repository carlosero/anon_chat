# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140925012743) do

  create_table "chats", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "chat_type"
    t.string   "encrypted_password"
    t.datetime "last_activity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chats", ["user_id"], name: "index_chats_on_user_id"

  create_table "members", id: false, force: true do |t|
    t.integer  "user_id"
    t.integer  "chat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["chat_id"], name: "index_members_on_chat_id"
  add_index "members", ["user_id"], name: "index_members_on_user_id"

  create_table "messages", force: true do |t|
    t.integer  "user_id"
    t.integer  "chat_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["chat_id"], name: "index_messages_on_chat_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "nick"
    t.string   "email"
    t.boolean  "anon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
