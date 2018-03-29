json.extract! person, :id, :name, :phonenumber, :address, :created_at, :updated_at
json.url person_url(person, format: :json)
