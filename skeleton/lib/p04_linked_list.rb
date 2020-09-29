# Phase 4: Linked List

# A linked list is a data structure that consists of a series of nodes. Each node holds
# a value and a pointer to the next node (or nil). Given a pointer to the first (or head)
# node, you can access any arbitrary node by traversing the nodes in order.

# We will be implementing a special type of linked list called a "doubly linked list" -
# this means that each node should also hold a pointer to the previous node. Given a
# pointer to the last (or tail) node, we can traverse the list in reverse order.

# Our LinkedLists will ultimately be used in lieu of arrays for our HashMap buckets.
# In order to make the HashMap work, each node in your linked list will need to store
# both a key and a value.

# The Node class is provided for you. It's up to you to implement the LinkedList.

# Making Heads and Tails of LinkedList

# There are a few ways to implement LinkedList. You can either start with the head and
# tail of your list as nil, or start them off as sentinel nodes. For this project, we
# will be using sentinel nodes to avoid unnecessary type checking for nil.

# A sentinel node is merely a "dummy" node that does not hold a value. Your LinkedList
# should keep track of pointers (read: instance variables) to sentinel nodes for its head
# and tail. The head and tail should never be reassigned.

# Given these properties of our LinkedList, how might we check if our list is empty?
# How might we check if we are at the end of our list? Think about how your linked list
# will function as you implement the methods below.

# Methods to Implement

# Go forth and implement the following methods:

# first
# empty?
# #append(key, val) - Append a new node to the end of the list.
# #update(key, val) - Find an existing node by key and update its value.
# #get(key)
# #include?(key)
# #remove(key)
# If you are surprised by any spec failures along the way, remember to read both the
# RSpec messages and the spec file itself. Does the setup for this test rely on any
# methods that you haven’t yet implemented? Be sure not to put on “spec blinders” -
# try out the methods you’re writing for yourself to test their behavior, and don’t
# let passed or failed specs be your only metric for whether you’ve written the code
# you need.

# Once you're done with those methods, we're also going to make your linked lists
# enumerable. We want them to be just as flexible as arrays. Remember back to when
# you wrote Array#my_each, and let's get this thing enumerating. The block passed to
# #each will yield to a node.

# Once you have #each defined, you can include the Enumerable module into your class.
# As long as you have each defined, the Enumerable module gives you map, each_with_index,
# select, any? and all of the other enumeration methods for free! (Note: you may wish
# to refactor your #update, #get, and #include methods to use your #each method for
# cleaner code!)


class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  def initialize
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
  end

  def last
  end

  def empty?
  end

  def get(key)
  end

  def include?(key)
  end

  def append(key, val)
  end

  def update(key, val)
  end

  def remove(key)
  end

  def each
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
