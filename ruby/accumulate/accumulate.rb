class Array
  def accumulate
    accumulated = []
    each { |item| accumulated << (yield item) }
    accumulated
  end
end