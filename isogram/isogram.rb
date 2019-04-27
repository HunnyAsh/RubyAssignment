class Isogram
  def self.isogram?(input)
    input = input.gsub('-','') if input.downcase.include?('-')
    input = input.gsub(' ','') if input.downcase.include?(' ')
    uniq_chars = input.downcase.chars.uniq
    uniq_chars.eql?(input.downcase.chars)
  end
end
