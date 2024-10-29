json.extract! comment, :id, :content, :date, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
