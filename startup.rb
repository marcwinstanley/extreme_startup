require 'sinatra'
require 'sinatra/reloader'

set :bind, '0.0.0.0'

class Question

  def initialize(param_string)
    @param_string = param_string
  end

  def answer
    params = @param_string.split(":")
    question = params[1]
    answers = question.match(/what is (\d+) plus (\d+)/).captures
    answer = answers[0].to_i + answers[1].to_i
  end

end


get '/*' do
  Question.new(params['q']).answer
end