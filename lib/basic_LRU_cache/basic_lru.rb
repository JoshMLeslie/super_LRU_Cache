class BasicLRUcache

  def initialize(size=4)
    @cache = []
    @size = size
  end

  def add(el)
    if cache.include?(el)
      @cache.delete(el) # delete the old-match element
      @cache << el      # add it to the end
    elsif count >= @size
      @cache.shift      # pop off the oldest element
      @cache << el      # add new element
    else
      @cache << el      # otherwise just add the el
    end
  end

  def count
    # returns number of elements currently in cache
    cache.count
  end

  def show
    # shows the items in the cache, with the LRU item first
    cache.each {|el| p el}
  end

private
  attr_reader :cache, :size
end
