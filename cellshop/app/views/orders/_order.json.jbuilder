json.extract! order, :id, :date_request, :total_price, :date_delivered, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
