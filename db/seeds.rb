require 'faker'

# 10.times do |i|
#   Event.create({
#     :date => Date.today + i,
#     :title => "Event #{i}",
#     :organizer_name => "Organizer #{i}",
#     :organizer_email => "organizer_#{i}@example.com" })
# end

Event.create({
	:organizer_name => "",  
  :date => "some date",
  :title => "Event Test2",
  :organizer_email => "organizer_A@example.com" 
})
