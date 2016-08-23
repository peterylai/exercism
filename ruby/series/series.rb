class Series
  attr_reader :series
  def initialize(input)
    @series = input.chars.map(&:to_i)
  end

  def slices(length)
    raise ArgumentError if length > series.length
    series.each_cons(length).to_a
  end
end
