json.extract! recreational_flight, :id, :first_name, :last_name, :email, :phone, :occasion, :preferred_date, :preferred_availability, :alternate_date, :alternate_availability, :comments, :created_at, :updated_at
json.url recreational_flight_url(recreational_flight, format: :json)
