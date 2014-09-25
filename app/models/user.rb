# name: string
# nick: string unique
# email: string
# anon: boolean
class User < ActiveRecord::Base
  has_many :messages
  has_and_belongs_to_many :chats, -> { uniq }, :join_table => :members

  scope :anons, -> { where(:anon => true) }

  def anon?
    !!anon
  end
end
