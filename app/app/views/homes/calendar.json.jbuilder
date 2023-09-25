json.array!(@events) do |event|
  json.id event.id
  json.title event.event_title
  json.start event.event_start.in_time_zone('Tokyo')
  json.end event.event_end.in_time_zone('Tokyo')
  # json.url event_url(event.id, format: :html)
end