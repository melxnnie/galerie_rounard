json.extract! artist, :id, :photo, :first_name, :last_name, :nationality, :birth_year, :death_year, :description, :created_at, :updated_at
json.url artist_url(artist, format: :json)
