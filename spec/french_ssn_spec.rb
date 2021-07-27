require_relative '../french_ssn.rb'

describe '#french_ssn_info' do
  it 'should return "The number is invalid" when given an empty string' do
    expected = 'The number is invalid'
    actual = french_ssn_info("")

    expect(actual).to eq(expected)
  end

  it 'should return "a man, born in December, 1984 in Seine-Maritime." when given "1 84 12 76 451 089 46"' do
    expected = "a man, born in December, 1984 in Seine-Maritime."
    actual = french_ssn_info("1 84 12 76 451 089 46")

    expect(actual).to eq(expected)
  end

   it 'should return "This numer is invalid" when the key is wrong' do
    expected = "The number is invalid"
    actual = french_ssn_info("1 84 12 76 451 089 48")

    expect(actual).to eq(expected)
  end
end
