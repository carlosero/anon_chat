# name: string
# nick: string unique
# email: string
# anon: boolean
class User < ActiveRecord::Base
  has_many :messages
  has_many :chats, -> { uniq }, :through => :members
end
