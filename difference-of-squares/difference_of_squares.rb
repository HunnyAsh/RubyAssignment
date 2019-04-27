require 'byebug'
class Squares
  attr_accessor :num, :sum_of_squares, :sum
  def initialize(num)
    @num = num
    @sum_of_squares = 0
    @sum = 0
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def sum_of_squares
    for i in 1..num
     @sum_of_squares += i ** 2
    end
    @sum_of_squares
  end

  def square_of_sum
    sum = (num + 1)*num / 2
    sum ** 2
  end
end

Squares.new(100).difference
