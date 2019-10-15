json.extract! event, :id, :location, :date, :time, :host_id, :created_at, :updated_at
json.url event_url(event, format: :json)
