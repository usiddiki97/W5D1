# Phase 5: Hash Map (reprise)

# So now let's incorporate our linked list into our hash buckets. Instead of Arrays,
# we'll use LinkedLists for our buckets. Each linked list will start out empty. But
# whenever we want to insert an item into that bucket, we'll just append it to the end
# of that linked list.

# So here again is a summary of how you use our hash map:

# Hash the key, mod by the number of buckets (implement the #bucket method first for
# cleaner code - it should return the correct bucket for a hashed key)

# To set, insert a new node with the key and value into the correct bucket. (You can
# use your LinkedList#append method.) If the key already exists, you will need to update
# the existing node.

# To get, check whether the linked list contains the key you're looking up.
# To delete, remove the node corresponding to that key from the linked list.
# Finally, let's make your hash map properly enumerable. You know the drill. Implement
# #each, and then include the Enumerable module. Your method should yield [key, value]
# pairs.

# Also make sure your hash map resizes when the count exceeds the number of buckets!
# In order to resize properly, you have to double the size of the container for your
# buckets. Having done so, enumerate over each of your linked lists and re-insert
# their contents into your newly-resized hash map. If you don't re-hash them, your
# hash map will be completely broken. Can you see why?

# Now pass those specs.

# Once you're done, you should have a fully functioning hash map that can use numbers,
# strings, arrays, or hashes as keys. Show off your understanding by asking a TA for
# a Code Review.




require_relative 'p04_linked_list'

class HashMap
  attr_accessor :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { LinkedList.new }
    @count = 0
  end

  def include?(key)
  end

  def set(key, val)
  end

  def get(key)
  end

  def delete(key)
  end

  def each
  end

  # uncomment when you have Enumerable included
  # def to_s
  #   pairs = inject([]) do |strs, (k, v)|
  #     strs << "#{k.to_s} => #{v.to_s}"
  #   end
  #   "{\n" + pairs.join(",\n") + "\n}"
  # end

  alias_method :[], :get
  alias_method :[]=, :set

  private

  def num_buckets
    @store.length
  end

  def resize!
  end

  def bucket(key)
    # optional but useful; return the bucket corresponding to `key`
  end
end
