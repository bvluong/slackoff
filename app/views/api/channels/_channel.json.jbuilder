json.extract! channel, :id, :name, :description, :created_at


json.userCount user_count

json.users users do |user|
  json.extract! user, :id, :username, :photo_url
end

### roflcucks

json.messages messages do |message|
  json.extract! message, :id, :content, :content_type, :updated_at
  json.author User.find(message.user_id), :id, :username, :photo_url
end
