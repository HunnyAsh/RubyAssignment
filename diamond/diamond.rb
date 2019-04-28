class Diamond
  def self.make_diamond(char)
    no_of_rows = char.ord - 65 + 1
    start_char = 'A'
      no_of_rows.times {|i|
        print ' ' * (no_of_rows - i)
        print "#{start_char} " * (i + 1)
        print "\n"
        start_char = start_char.next
      }
      start_char = (start_char.ord - 2).chr
      (no_of_rows-2).downto(0) {|i|
        print ' ' * (no_of_rows - i)
        print "#{start_char} " * (i + 1)
        print "\n"
        start_char = (start_char.ord - 1).chr
      }
  end
end

Diamond.make_diamond('E')
