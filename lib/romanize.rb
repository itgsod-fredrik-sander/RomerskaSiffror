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
  

end