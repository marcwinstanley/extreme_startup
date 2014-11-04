require 'sinatra'
require 'sinatra/reloader'

set :bind, '0.0.0.0'

get '/*' do
  q = params['q']
  id, question = q.split(':')
  puts id
  puts question
end