require 'spec_helper'

describe Question do

  it 'takes a string' do
    Question.new('question string')
  end

  it 'answers' do
    expect(Question.new('question').answer)
  end

  describe 'answering questions' do
    subject { Question.new(question).answer }

    context 'what is x plus y' do
      let(:question) { 'f9380cd0: what is 6 plus 19' }

      it 'returns 25' do
        expect(subject).to eq 25
      end


    end
  end 
end