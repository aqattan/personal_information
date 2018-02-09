json.extract! person, :id, :name, :phone_number, :gender, :created_at, :updated_at
json.url person_url(person, format: :json)
