json.extract! drone, :id, :status, :name, :created_at, :updated_at
json.url drone_url(drone, format: :json)
