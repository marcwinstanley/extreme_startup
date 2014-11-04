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

    context 'what color is a banana' do
      let(:question) {'q=00515f60: what colour is a banana'}

      it 'returns the answer' do
        expect(subject).to eq 'Yellow'
      end
    end

    context 'Who is the prime minister' do
      let(:question) {'q=00515f60: who is the Prime Minister of Great Britain'}

      it 'returns the answer' do
        expect(subject).to eq 'David Cameron'
      end
    end
    
    context 'which of the following numbers are primes' do
      let(:question) {'b655adb0: which of the following numbers are primes: 11, 742 '}

      it 'returns the primes' do
        expect(subject).to eq "11"
      end
    end


    context 'which of the following numbers is both a square and a cube' do
      let(:question) {'q=00515f60: which of the following numbers is both a square and a cube: 289, 511, 1, 614'}

      it 'returns the answer' do
        expect(subject).to eq '1'
      end
    end
  end 
end
