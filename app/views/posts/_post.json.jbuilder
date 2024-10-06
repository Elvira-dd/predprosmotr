json.extract! post, :id, :title, :content, :date, :is_comments_open, :link, :hashtag, :created_at, :updated_at
json.url post_url(post, format: :json)
