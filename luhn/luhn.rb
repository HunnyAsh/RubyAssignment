require 'byebug'

class Luhn
  attr_accessor :card_number

  def self.valid?(card_number)
    @card_number = card_number.gsub(/\s+/, '')
    return false if no_space_special_character?
    return true if more_than_one_zeros?
    card_number_array = @card_number.split('').map(&:to_i)
    even_odd_ind_array = card_number_array.partition.each_with_index { |value, index| card_number_array.length.even? ? index.even? : index.odd? }
    even_indexed = even_odd_ind_array[0]
    odd_indexed = even_odd_ind_array[1]
    even_indexed = even_indexed.map { |ele| 2 * ele > 9 ? 2*ele - 9 : 2 * ele }
    merged_array = card_number_array.length.even? ? even_indexed.zip(odd_indexed).flatten : odd_indexed.zip(even_indexed).flatten
    sum = merged_array.compact.inject(0) { |sum, x| sum + x }
    sum.modulo(10).zero?
  end
end

def no_space_special_character?
  length_less_than_1 || special_character_present?
end

def length_less_than_1
  @card_number.length <= 1
end

def special_character_present?
  @card_number.match(/^[[:digit:][:blank:]]+$/).nil?
end

def more_than_one_zeros?
  zero_array = @card_number.split('').uniq.map(&:to_i)
  zero_array.length.eql?(1) && zero_array.first.zero?
end

puts Luhn.valid?("091")
