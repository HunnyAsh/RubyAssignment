require 'byebug'
class Array
  def keep(block = nil)
    block ? map(&:block) : map { |e| e if yield(e) }.compact
  end

  def discard(block = nil)
    block ? map(&:block) : map { |e| e unless yield(e)}.compact
  end
end