class Array
  def accumulate(block = nil)
    block ? map(block) : map { |e| yield(e)}
  end
end