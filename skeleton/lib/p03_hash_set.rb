# Phase 3: HashSet

# Now that we've got our hashing functions, we can store more than just integers. A proper
# hashing function also ensures that the elements that we store will be evenly distributed
# amongst our buckets, hopefully keeping our buckets to length <= 1. Our freshly cooked
# up hashing functions are awesome, but for the rest of this project we'll rely on the
# built-in Ruby hashing functions to minimize the clustering of elements that can occur
# with our hand-made functions. Let's go ahead and implement a HashSet!

# This will be a simple improvement on ResizingIntSet. Just hash every item before
# performing any operation on it. This will return an integer, which you can modulo by
# the number of buckets. Implement the #[] method to dry up your code. With this simple
# construction, your set will be able to handle keys of any data type.

# Not too different from what we had before - and we now have a much better set that works
# with any data type! Time to request a code review.

# Now let's take it one step further.

# Up until now, our hash set has only been able to insert and then check for inclusion.
# We couldn't create a map of values, as in key-value pairs. Let's change that and create
# a hash map. But first, we'll have to build a subordinate, underlying data structure.


class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
  end

  def include?(key)
  end

  def remove(key)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
