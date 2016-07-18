module Raindrops
  SOUNDS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    result = SOUNDS.reduce('') do |result, (divisor, sound)|
      number % divisor == 0 ? result + sound : result
    end
    result.empty? ? number.to_s : result
  end
end

module BookKeeping
  VERSION = 2
end