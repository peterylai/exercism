class Fixnum
  CONVERSION = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }

  def to_roman
    unconverted = self
    numeral = ''
    CONVERSION.each do |roman, arabic|
      while unconverted >= arabic
        unconverted -= arabic
        numeral += roman
      end
    end
    numeral
  end
end

module BookKeeping
  VERSION = 2
end