# user: id
# chat: id
# message: text
class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat
end
