json.extract! video, :id, :name, :body, :created_at, :updated_at
json.url video_url(video, format: :json)
