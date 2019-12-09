json.extract! session, :id, :room_id, :movie_id, :date, :created_at, :updated_at
json.url session_url(session, format: :json)
