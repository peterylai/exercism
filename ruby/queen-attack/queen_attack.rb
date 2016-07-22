class Queens
  attr_reader :white, :black

  def initialize(positions = {white: [0,3], black: [7,3]})
    raise ArgumentError if positions[:white] == positions[:black]
    @white = positions[:white]
    @black = positions[:black]
  end

  def attack?
     horizontal? || vertical? || diagonal?
  end

  def to_s
    board = Array.new(8) { Array.new(8, '_') }
    board[white[0]][white[1]] = 'W'
    board[black[0]][black[1]] = 'B'
    board.map{|row| row.join(" ")}.join("\n")
  end

  private

  def horizontal?
    white[0] == black[0]
  end

  def vertical?
    white[1] == black[1]
  end

  def diagonal?
    (white[0] - black[0]).abs == (white[1] - black[1]).abs
  end
end