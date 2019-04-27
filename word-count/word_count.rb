# count the word occurences
class Phrase
  attr_accessor :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = Hash.new(0)
    words = phrase.scan(/\b[\w']+\b/)
    words.each do |word|
      counts[:word.downcase] += 1
    end
    counts
  end
end
