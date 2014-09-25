# user: id (creator)
# name: string
# type: string (anon/common)
# encrypted_password: for private rooms
# last_activity: datetime (after 5 hours, delete it if anon)
class Chat < ActiveRecord::Base
  belongs_to :user
  has_many :messages
  has_many :members
  has_many :users, -> { uniq }, :through => :members
  attr_accessor :password

  TYPES = {
    :anon => :anon,
    :common => :common
  }

  EXPIRATION_TIME = 5.hours

  def password=(psw)
    self.encrypted_password = BCrypt::Engine.hash_secret(psw, PASSWORD_SALT)
  end

  def anon?
    self.chat_type == TYPES[:anon]
  end

  def expired?
    self.last_activity < EXPIRATION_TIME.ago
  end
end
