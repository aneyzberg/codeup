json.array!(@user_devs) do |user_dev|
  json.extract! user_dev, :id, :username, :bio, :developer_type, :user_id
  json.url user_dev_url(user_dev, format: :json)
end
