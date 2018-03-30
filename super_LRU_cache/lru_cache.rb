require_relative 'lru_cache'

if __FILE__ == $PROGRAM_NAME
  # You can't call a cache bob!
  bob = LRUCache.new(4)

  bob.add("I walk the line")
  bob.add(5)

  bob.count # => returns 2

  bob.add([1,2,3])
  bob.add(5)
  bob.add(-5)
  bob.add({a: 1, b: 2, c: 3})
  bob.add([1,2,3,4])
  bob.add("I walk the line")
  bob.add(:ring_of_fire)
  bob.add("I walk the line")
  bob.add({a: 1, b: 2, c: 3})


  bob.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]

end
