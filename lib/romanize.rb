class Integer
  def negative?
    if self < 0
      return true
    end

    return false
  end

  def to_a
    return self.to_s.scan(/./).map {|value| value.to_i }
  end
end

def romanize(number)
  raise ArgumentError, 'can not encode zero' if number.zero?
  raise ArgumentError, 'can not encode negative number' if number.negative?
  
  arabic_roman_numbers = {1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D", 1000 => "M"}
  roman_number = ""
  
  arabic_roman_numbers.keys.sort.reverse.each do |key|
    while number >= key
      roman_number += arabic_roman_numbers[key]
      number -= key
    end
  end

  return roman_number
end