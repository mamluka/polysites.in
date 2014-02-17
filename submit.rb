require 'sinatra'
require 'json'

set :port, 8080

post '/submit' do
  File.write(Time.now.to_s, JSON.pretty_generate(params))
  'OK'
end
