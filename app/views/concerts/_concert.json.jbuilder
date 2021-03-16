json.extract! concert, :id, :band_id, :attendance, :duration, :date, :created_at, :updated_at
json.url concert_url(concert, format: :json)
