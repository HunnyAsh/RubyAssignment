class Pangram
  def self.pangram?(sentence)
    sentence = sentence.gsub(/[^A-Za-z]/, '').downcase
    sentence.chars.uniq.length.eql?(26)
  end
end
