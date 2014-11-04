require 'sinatra'
require 'sinatra/reloader'

set :bind, '0.0.0.0'

class Question

  def initialize(param_string)
    @param_string = param_string
    puts '\n\n ----------'
    puts @param_string.split(':')[1]
    puts '---------- \n\n'
  end

  def answer
    id, *question = @param_string.split(":")
    question_type(question)
  end

  def question_type(question)
    case question.first
    when /what is (\d+) plus (\d+)/ then x_plus_y(question)
    when /which of the following numbers is the largest/ then return_largest_value(question)
    when /what colour is a banana/ then return_yellow
    when /who is the Prime Minister of Great Britain/ then return_pm
    end
  end

  def x_plus_y(question)
    answers = question.first.match(/what is (\d+) plus (\d+)/).captures
    answer = answers[0].to_i + answers[1].to_i
  end

  def return_largest_value(question)
    question[1].split(',').map(&:to_i).max
  end

  def return_yellow
    "Yellow"
  end

  def return_pm
    "David Cameron"
  end

end


get '/*' do
  Question.new(params['q']).answer
end