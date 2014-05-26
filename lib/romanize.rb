class Integer
  # Private: Tests whether a number is negative or not
  #
  # Examples
  #
  #   -1.negative?
  #   # =>  true
  #   1234.negative?
  #   # =>  false
  #
  # Returns true if the number is negative or false if the number is positive
  
  # Add a private method negative? to instances of Integer class.

  def negative?
    if self < 0
      return true
    end

    return false
  end
end

# Public: Converts an arabic number to roman number
#
# number - The arabic number to be converted
#
# Examples
#
#   romanize(747)
#   # =>  'DCCXLVII'
#   romanize(1978)
#   # =>  'MCMLXXVIII'
#
# Returns the roman number

def romanize(number)
  raise ArgumentError, 'can not encode zero' if number.zero?
  raise ArgumentError, 'can not encode negative number' if number.negative?
  
  # We create an instance of a Hash to eazily access values and keys in our algorithm.

  arabic_roman_numbers = {1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D", 900 => "CM", 1000 => "M"}
  roman_number = ""
  
  # We iterate over each of the keys in the arabic_roman_numbers hash.
  arabic_roman_numbers.keys.sort.reverse.each do |key|
    # Loop as long as the number is bigger or equal to the key.
    while number >= key
      # Add the key's value to the roman_number. For instance " " + "X" => "X"
      roman_number += arabic_roman_numbers[key]
      # Subtract the key from the arabic number.
      number -= key
    end
  end

  return roman_number
end