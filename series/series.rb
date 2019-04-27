# consecutive repaeting strings with an interval
class Series
  attr_accessor :series
  def initialize(series)
    @series = series.chars
  end

  def slices(n)
    raise ArgumentError if series.length < n
    series.each_cons(n).map(&:join)
  end
end
