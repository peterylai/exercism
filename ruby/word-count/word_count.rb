class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object({}) do |word, counts|
      counts.has_key?(word) ? counts[word] += 1 : counts[word] = 1
    end
  end

  private

  def words
    phrase.downcase.split(/'?[^\w']+'?/)
  end
end

module BookKeeping
  VERSION = 1
end