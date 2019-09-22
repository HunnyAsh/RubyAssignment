require 'byebug'
class Complement
  DNA = ['G', 'C', 'T', 'A'].freeze
  RNA = ['C', 'G', 'A', 'U'].freeze
  def self.of_dna(input)
    input_chars = input.chars.map { |dna_char| RNA[DNA.index(dna_char) ? DNA.index(dna_char) : dna_char]}
    input_chars.join('')
  end
end
