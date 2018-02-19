json.extract! item, :id, :title, :image, :content, :created_at, :updated_at
json.url item_url(item, format: :json)
