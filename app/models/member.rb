# user
# chat
class Member < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat
end
