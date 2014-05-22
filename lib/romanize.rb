class Integer
  def negative?
    if self < 0
      return true
    end

    return false
  end
end

def romanize(number)
  raise ArgumentError, 'can not encode zero' if number.zero?
  raise ArgumentError, 'can not encode negative number' if number.negative?
  
  arabic_roman_numbers = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}

  return "string"
end