# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

events = [
  { event_title: "Sample Event 1", event_start: DateTime.now, event_end: DateTime.now },
  { event_title: "Sample Event 2", event_start: DateTime.now + 1.days, event_end: DateTime.now + 1.days },
  { event_title: "Sample Event 3", event_start: DateTime.now + 2.days, event_end: DateTime.now + 2.days },
  { event_title: "Sample Event 4", event_start: DateTime.now + 3.days, event_end: DateTime.now + 3.days },
  { event_title: "Sample Event 5", event_start: DateTime.now + 4.days, event_end: DateTime.now + 4.days },
  { event_title: "Sample Event 6", event_start: DateTime.now + 5.days, event_end: DateTime.now + 5.days },
  { event_title: "Sample Event 7", event_start: DateTime.now + 6.days, event_end: DateTime.now + 6.days },
]

events.each do |event|
  Event.find_or_create_by(event_title: event[:event_title]) do |e|
    e.event_start = event[:event_start]
    e.event_end = event[:event_end]
  end
end