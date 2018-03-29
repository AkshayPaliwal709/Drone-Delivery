json.extract! orderdetail, :id, :order_id, :product_id, :quantity, :created_at, :updated_at
json.url orderdetail_url(orderdetail, format: :json)
