json.extract! order_detail, :id, :price, :order_id, :product_id, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
