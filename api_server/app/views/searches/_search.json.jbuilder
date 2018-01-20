json.extract! search, :id, :q, :ip_addr, :created_at, :updated_at
json.url search_url(search, format: :json)