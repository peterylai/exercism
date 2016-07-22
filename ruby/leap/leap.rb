class Fixnum
  def divisible?(num)
    self % num == 0
  end
end

class Year
  def self.leap?(year)
    !year.divisible?(100) && year.divisible?(4) || year.divisible?(400) 
  end
end

module BookKeeping
  VERSION = 2
end