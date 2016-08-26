json.array!(@stop_requests) do |stop_request|
  json.extract! stop_request, :id
  json.url stop_request_url(stop_request, format: :json)
end
