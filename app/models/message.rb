# user: id
# chat: id
# message: text
class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat
  # This sorting is not done because, it is impossible to actually add a message after another with an prescending ID.
  # default_scope { order(:updated_at) }
end
