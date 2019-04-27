# Scrabble words program
class Scrabble
  attr_accessor :score_hash, :ip_str
  def initialize(ip)
    @ip_str = ip
  end

  def score
    score_hash = { 'AEIOULNRTS' => 1, 'DG' => 2, 'BCMP' => 3,'FHVWY' => 4, 'K' => 5, 'JX' => 8, 'QZ' => 10 }
    keys = score_hash.keys
    sum = 0
    return 0 if ip_str.nil?
    ip_str.chars.each do |c|
      keys.each do |key|
        sum += score_hash[key] if key.downcase.include?(c.downcase)
      end
    end
    sum
  end

  def self.score(ip)
    new(ip).score
  end
end
