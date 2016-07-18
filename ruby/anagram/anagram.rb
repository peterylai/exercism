class Anagram
  attr_reader :anagram

  def initialize(anagram)
    @anagram = anagram.downcase
  end

  def match(words)
    words.select do |word|
      word.downcase != anagram && word.downcase.chars.sort == anagram.chars.sort
    end
  end
end