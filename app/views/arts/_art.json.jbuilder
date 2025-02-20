json.extract! art, :id, :photo, :art_name, :artist_id, :year, :style, :description, :created_at, :updated_at
json.url art_url(art, format: :json)
