require 'byebug'

class ArmstrongNumbers
  def self.include?(no)
    sum = no.to_s.chars.map { |digit| digit.to_i**no.to_s.length }.inject(0, :+)
    sum.eql?(no)
  end
end

ArmstrongNumbers.include?(9_745)
