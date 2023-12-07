module Enumerable
  # Your code goes here

  def my_each_with_index
    index = 0
    if block_given?
      while index <= self.length - 1
        yield self[index], index
        index = index + 1
      end
    end
    return self
  end

  def my_select
    if block_given?
      arr = []
      self.my_each do |value|

        yield value
      end
    end
    return [] 
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here

  def my_each
      index = 0
      if block_given?
        while index <= self.length - 1
          yield self[index]
          index = index + 1
        end
      end
      return self
  end 
end
