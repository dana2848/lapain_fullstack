require 'sinatra'
require 'httparty'


get '/' do
  erb :home
end

get '/cakes' do
  erb :cakes
end

get '/event' do
  response = HTTParty.get('https://www.eventbriteapi.com/v3/events/search/?token='ENV["API_KEY"]))
  puts response
  erb :event
end

get '/cupcakes' do
  erb :cupcakes
end

get '/cookies' do
@songs = [ {title: 'fly', url:'https://www.youtube.com/watch?v=hnwXn0YS5Zk'},
{title: 'fly', url:'https://www.youtube.com/watch?v=hnwXn0YS5Zk'}, {title: 'fly', url:'https://www.youtube.com/watch?v=hnwXn0YS5Zk'},
{title: 'fly', url:'https://www.youtube.com/watch?v=hnwXn0YS5Zk'}]
erb :cookies
end
