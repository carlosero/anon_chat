# user
# chat
class Member < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat

  before_destroy { user.destroy if user.anon? }
end
