class Year
  def self.leap?(year)
    return true if divisible_by_4?(year) && year.modulo(400).zero?
    return false if divisible_by_4?(year) && year.modulo(100).zero?
    return true if divisible_by_4?(year)
  end

  def self.divisible_by_4?(year)
    year.modulo(4).zero?
  end
end
