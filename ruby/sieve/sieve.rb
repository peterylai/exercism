class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    primes = []
    unmarked_nums = (2..limit).to_a
    while !unmarked_nums.empty?
      primes << unmarked_nums.shift
      unmarked_nums.reject!{ |num| num % primes.last == 0}
    end
    primes
  end
end