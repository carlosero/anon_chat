json.array!(@chats) do |chat|
  json.extract! chat, :id, :user_id, :name, :chat_type, :password, :last_activity
  json.url chat_url(chat, format: :json)
end
