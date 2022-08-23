# TO DO: Write the specs that ensures our speed_in_mph method
# successfully converts speed from km/h to mi/h.
require 'speed_in_mph'

describe '#speed_in_mph' do
    it " takes a float as an argument and returns it converted from km/h to mph" do
        expect(speed_in_mph(100)).to eq(0.6213711922*100)
        expect(speed_in_mph(123.45)).to eq(0.6213711922*123.45)
    end

    it 'returns an error message if the argument passed is not a number' do
        expect(speed_in_mph('100')).to eq('error')
        expect(speed_in_mph([100])).to eq('error')
    end
end