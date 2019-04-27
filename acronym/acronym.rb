# used for acronyms
class Acronym
  attr_accessor :word, :acronym
  def self.abbreviate(str)
    @acronym = ''
    @word = str.split(/\W+/)
    @word.each do |single|
      @acronym.concat(single[0].upcase)
    end
    p @acronym
  end
end
