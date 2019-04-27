# find the highest scores with top 3
class HighScores
  attr_accessor :scores, :latest, :personal_best, :personal_top, :report
  def initialize(arr = [])
    @scores = arr
    @latest = arr.last
    @personal_best = arr.max
    s_sort = scores.sort
    @personal_top = scores.length > 3 ? s_sort.reverse.first(3) : s_sort.reverse
    @report = "Your latest score was #{latest}. #{report_msg}"
  end

  def report_msg
    latest == personal_best ? "That's your personal best!" : "That's #{personal_best - latest} short of your personal best!"
  end
end
