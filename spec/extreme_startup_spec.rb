require 'spec_helper'

describe Question do

  describe 'answering questions' do
    subject { Question.new(question).answer }

    context 'what is 6 plus 19' do
      let(:question) { 'f9380cd0: what is 6 plus 19' }

      it 'returns 25' do
        expect(subject).to eq 25
      end

    end

    context 'what is x plus y' do
      let(:question) { 'f9380cd0: what is 6 plus 20' }

      it 'returns 25' do
        expect(subject).to eq 26
      end

    end

    context 'which is the largest figure' do
      let(:question) {'q=00515f60: which of the following numbers is the largest: 38, 8, 581, 357'}

      it 'returns 581' do
        expect(subject).to eq 581
      end
    end
  end 
end