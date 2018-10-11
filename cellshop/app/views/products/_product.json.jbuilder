json.extract! product, :id, :description, :image, :stock, :price, :model_id, :memory_id, :color_id, :storage_id, :created_at, :updated_at
json.url product_url(product, format: :json)
