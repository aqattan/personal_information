json.extract! profile, :id, :phone_no, :email, :created_at, :updated_at
json.url profile_url(profile, format: :json)
