json.extract! post, :id, :commenter, :body, :created_at, :updated_at
json.url post_url(post, format: :json)