# user: id (creator)
# name: string
# type: string (anon/common)
# encrypted_password: for private rooms
# last_activity: datetime (after 5 hours, delete it if anon)
class Chat < ActiveRecord::Base
  belongs_to :user
  has_many :messages, :dependent => :destroy
  has_many :members,  :dependent => :destroy
  has_and_belongs_to_many :users, -> { uniq }, :join_table => :members

  scope :anons,   -> { where(:chat_type => :anon) }
  scope :expired, -> { where('last_activity <= ?', EXPIRATION_TIME.ago) }

  attr_accessor :password

  EXPIRATION_TIME = 5.hours # delete anonymous chats after this

  TYPES = {
    :anon   => :anon,
    :common => :common
  }

  def password=(psw)
    self.encrypted_password = BCrypt::Engine.hash_secret(psw, PASSWORD_SALT)
  end

  def anon?
    self.chat_type == :anon
  end

  def expired?
    self.last_activity <= EXPIRATION_TIME.ago
  end
end
