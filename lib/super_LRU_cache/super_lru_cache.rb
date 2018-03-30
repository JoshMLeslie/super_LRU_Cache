require_relative 'cell'

class SuperLRUCache

  def initialize
    @map = {}
    @link_list = start_link
  end

  def add(el)
    @map[el] = Cell.new(val)
    @map[el].insert_in(link_list)
  end

  def count
    # returns number of elements currently in cache
    @map.count
  end

  def show
    # shows the items in the cache, with the LRU item first
    linked.show
  end

  private
  attr_reader :cache

  def start_link
    head = Cell.make_head
    tail = Cell.make_tail

    @link_list = {head}
  end
end
