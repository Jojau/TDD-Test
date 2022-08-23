# TO DO: Write the test that ensure:
# - Our array_to_hash method successfully converts an array to a hash, with the given pattern
# - Our palindrome? method successfully returns whether the given argument is a plindrome or not

require 'manupulate_objects'

describe '#array_to_hash' do
    it "converts an array into a hash. Each element of the array will be a value, and its key must be the initial index of the element." do
        expect(array_to_hash(['hi', 'ciao', 'salut'])).to eq({key0: 'hi', key1: 'ciao', key2: 'salut'})
    end

    it "Keys must be symbols, values must be strings" do
        expect(array_to_hash(['hi', 'ciao', 'salut']).keys[1]).to be_a(Symbol)
        expect(array_to_hash(['hi', 'ciao', 'salut'])[:key1]).to be_a(String)
    end

    it "must contain the same number of elements" do
        expect(array_to_hash(['hi', 'ciao', 'salut']).count()).to eq(['hi', 'ciao', 'salut'].count())
    end

    it 'returns an error message if the argument passed is not an array' do
        expect(array_to_hash('hey')).to eq('error')
        expect(array_to_hash(100)).to eq('error')
    end
end

describe '#palindrome?' do
    it "checks whether the string passed as an argument is a palindrome" do
        expect(palindrome?('Kayak')).to be true
        expect(palindrome?('Noon')).to be true
        expect(palindrome?('radar')).to be true
        expect(palindrome?('dog')).to be false
        expect(palindrome?('palindrome')).to be false
    end

    it 'returns an error message if the argument passed is not a string' do
        expect(palindrome?(101)).to eq('error')
        expect(palindrome?(['kayak'])).to eq('error')
    end
end