class PhoneNumber
  attr_reader :number

  INVALID = '0'*10

  def initialize(input)
    @number = clean(input)
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..9]}"
  end

  private

  def clean(input)
    return INVALID if /[^\d\s().-]/.match(input)
    number = input.gsub(/\D/,'')
    case
    when number.length == 10
      number
    when number.length == 11 && number.start_with?('1')
      number[1..-1]
    else
      INVALID
    end
  end
end