require 'spec_helper'

describe Question do

  it 'takes a string' do
    Question.new('question string')
  end

  it 'answers' do
    expect(Question.new('question').answer)
  end
end