class Grains
  def self.square(n)
    2**(n-1)
  end

  def self.total(squares=64)
    2**squares - 1
  end
end