get '/' do
  @events = Event.all
  erb :index
end

get '/events/new' do
	@event = Event.new
	erb :"events/create"
end

post '/events/create' do
  @event = Event.new(params[:event])
  @event.date = Date.parse(params[:event][:date]) if params[:event][:date] != ""
  @event.save ? (erb :"events/show") : (erb :"events/create")
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :"events/show"
end