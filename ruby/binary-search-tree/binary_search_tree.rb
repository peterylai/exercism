class Bst
  VERSION = 1

  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(val)
    if val <= data
      left ? left.insert(val) : self.left = Bst.new(val)
    else
      right ? right.insert(val) : self.right = Bst.new(val)      
    end
  end

  def each(&block)
    return enum_for(:each) unless block_given?
    left.each(&block) if left
    yield data
    right.each(&block) if right
  end
end