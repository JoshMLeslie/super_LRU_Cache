require 'set'

class Cell < Set
  def self.make_head
    Cell.new(:head, :true, :tail)
  end

  def self.make_tail
    Cell.new(:tail, :head, :true)
  end

  def initialize(val, head=nil, tail=nil)
    @val = val
    @head = head
    @tail = tail
  end

  def show
    val
  end

  def insert_in(link_list)
    # look at the list, insert the new cell where it should. be. yeah.

  end


  private
  attr_accessor :val, :head, :tail
end
