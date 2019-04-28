require 'byebug'
class Allergies
attr_accessor :sum, :allergy_list
  def initialize(sum)
    @sum = sum
    @allergy_list = %w[eggs peanuts shellfish strawberries tomatoes chocolate pollen cats]
  end

  def allergic_to?(item)
    1 << allergy_list.find_index(item) & @sum != 0
  end

  def list
    allergy_list.select { |item| allergic_to?(item) }
  end

end
