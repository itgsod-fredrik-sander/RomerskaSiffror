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
  number = number.dup
  
  raise ArgumentError, 'can not encode zero' if number.zero?
  raise ArgumentError, 'can not encode negative number' if number.negative?
  
  arabic_roman_numbers = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
  number = number.to_a



  return "string"
end