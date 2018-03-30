# require_relative '../lib/super_LRU_cache/super_lru_cache' # broken
require_relative '../lib/basic_LRU_cache/basic_lru'

if __FILE__ == $PROGRAM_NAME
  # You can't call a cache bob!
  # bob = SuperLRUcache.new(4)
  bob = BasicLRUcache.new(4)

  bob.add("I walk the line")
  bob.add(5)

  puts "\n  Count == 2?"
  puts "  #{(bob.count == 2).to_s.capitalize}" # => returns 2
  puts

  bob.add([1,2,3])
  bob.add(5)
  bob.add(-5)
  bob.add({a: 1, b: 2, c: 3})
  bob.add([1,2,3,4])
  bob.add("I walk the line")
  bob.add(:ring_of_fire)
  bob.add("I walk the line")
  bob.add({a: 1, b: 2, c: 3})

  puts "  Added a bunch of stuff?"
  puts
  bob.show #=> [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
  puts
  puts "  #{(bob.count == 4).to_s.capitalize}"

end
