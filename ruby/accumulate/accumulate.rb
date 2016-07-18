class Array
  def accumulate(&block)
    return enum_for(:accumulate) unless block_given?
    accumulated = []
    each { |item| accumulated << (yield item) }
    accumulated
  end
end