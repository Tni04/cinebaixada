json.extract! post, :id, :title, :text, :image, :date, :created_at, :updated_at
json.url post_url(post, format: :json)
