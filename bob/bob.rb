require 'byebug'
class Bob
  def self.hey(remark)
    remark = remark.strip
    if remark.end_with?('?')
      check_for_forceful_questions?(remark)
    elsif remark.include?('\n') || remark.include?('\t') || remark.eql?('')
      'Fine. Be that way!'
    elsif remark.end_with?('!') || remark.upcase.eql?(remark) && remark.match?(/[A-Za-z]/)
      'Whoa, chill out!'
    else
      'Whatever.'
    end
  end

  def self.check_for_forceful_questions?(remark)
    remark.eql?(remark.upcase) && remark.start_with?('W') ?  "Calm down, I know what I'm doing!" : 'Sure.'
  end
end

puts Bob.hey('1, 2, 3')