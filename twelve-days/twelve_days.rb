require 'byebug'
class TwelveDays
  GIFTS = ['and a Partridge in a Pear Tree.', 'two Turtle Doves', 'three French Hens', 'four Calling Birds', 'five Gold Rings', 'six Geese-a-Laying', 'seven Swans-a-Swimming', 'eight Maids-a-Milking', 'nine Ladies Dancing',
           'ten Lords-a-Leaping', 'eleven Pipers Piping', 'twelve Drummers Drumming'].freeze

  NUMBER_TO_ROMAN_WORDS = %w(first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth).freeze

  def self.song
    1.upto(12).map { |lyric| self.build_song(lyric) }.join("\n")
  end

  def self.build_song(n)
    case n
    when 1
      "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n"
    when 2..12
      "On the #{NUMBER_TO_ROMAN_WORDS[n-1]} day of Christmas my true love gave to me: #{GIFTS[0,n].reverse.join(', ')}\n"
    end
  end
end
