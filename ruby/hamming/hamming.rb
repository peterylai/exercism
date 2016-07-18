class Hamming
  def self.compute(first_strand, second_strand)
    raise ArgumentError.new if first_strand.length != second_strand.length

    (0...first_strand.length).count { |i| first_strand[i] != second_strand[i] }
  end
end

module BookKeeping
  VERSION = 3
end