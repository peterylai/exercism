module RunLengthEncoding
  def self.encode(input)
    partitioned = input.chars.chunk_while {|i,j| i == j}.to_a
    partitioned.map {|group| "#{group.length if group.length > 1}#{group.first}"}.join
  end

  def self.decode(input)
    input.scan(/(\d*)(\D)/).map do |match|
      count = match[0].empty? ? 1 : match[0].to_i
      match[1] * count
    end.join
  end
end


module BookKeeping
  VERSION = 2
end