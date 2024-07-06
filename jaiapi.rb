require 'sinatra'
require 'json'

# Define a route for the root URL
get '/' do
  'Welcome to My Simple API!'
end

# Define a route to return all items
get '/items' do
  content_type :json
  { items: ['Item 1', 'Item 2', 'Item 3'] }.to_json
end
