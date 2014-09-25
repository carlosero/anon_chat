# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# USERS
u1 = User.create!(name: 'Pat Flyin', nick: 'test1', email: 'test1@example.com', anon: false)
u2 = User.create!(name: 'Fred Kimble', nick: 'test2', email: 'test2@example.com', anon: false)
u3 = User.create!(name: 'Furiously', anon: true)
u4 = User.create!(name: 'Not chatting', anon: true)

# CHATS
c1 = Chat.create!(user: u1, name: 'Common chat 1', chat_type: 'common', last_activity: Time.now)
c2 = Chat.create!(user: u2, name: 'Common chat 2 with password', chat_type: 'common', password: 'pepe', last_activity: Time.now)
c3 = Chat.create!(user: u3, name: 'Anon chat 1', chat_type: 'anon', last_activity: Time.now)

# MEMBERS
Member.create!(user: u1, chat: c1)
Member.create!(user: u2, chat: c1)
Member.create!(user: u3, chat: c1)
Member.create!(user: u4, chat: c1)
Member.create!(user: u1, chat: c2)
Member.create!(user: u2, chat: c2)
Member.create!(user: u3, chat: c2)
Member.create!(user: u4, chat: c2)
Member.create!(user: u1, chat: c3)
Member.create!(user: u2, chat: c3)
Member.create!(user: u3, chat: c3)
Member.create!(user: u4, chat: c3)

# MESSAGES
Message.create!(user: u3, chat: c3, message: "This is a test message.")
Message.create!(user: u1, chat: c1, message: "This is a test message.")
Message.create!(user: u2, chat: c2, message: "This is a test message.")
Message.create!(user: u1, chat: c2, message: "This is a test message.")
Message.create!(user: u1, chat: c1, message: "This is a test message.")
Message.create!(user: u2, chat: c1, message: "This is a test message.")
Message.create!(user: u3, chat: c1, message: "This is a test message.")
Message.create!(user: u1, chat: c2, message: "This is a test message.")
Message.create!(user: u2, chat: c3, message: "This is a test message.")
Message.create!(user: u3, chat: c3, message: "This is a test message.")
Message.create!(user: u3, chat: c2, message: "This is a test message.")
Message.create!(user: u2, chat: c2, message: "This is a test message.")
Message.create!(user: u1, chat: c1, message: "This is a test message.")
