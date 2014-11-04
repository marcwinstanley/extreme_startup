require 'sinatra'
require 'sinatra/reloader'

set :bind, '0.0.0.0'

class Question

  def initialize(param_string)

  end

  def answer
    25
  end

end


get '/*' do
  Question.new(params['q']).answer
end