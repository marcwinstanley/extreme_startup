require 'sinatra'

set :bind, '0.0.0.0'

get '/*' do
 params.inspect
 "/giphy cat"
end