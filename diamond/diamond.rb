class Diamond
  def self.make_diamond(char)
    no_of_rows = char.ord - 65 + 1
    (1..no_of_rows).each do |i|
      (1..no_of_rows).each do |j|
        if j + i == no_of_rows / 2 || i + j == ((no_of_rows - 1) + no_of_rows / 2) || j == i + no_of_rows / 2 || i == j + no_of_rows / 2
          print char
        else
          print ' '
        end
      end
      print "\n"
    end
  end
end

Diamond.make_diamond('U')
