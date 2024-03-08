module Enumerable
  # Your code goes here
  def my_all?

  end

  def my_any?
  end

  def my_count
  end

  def my_each_with_index
    index = 0
    self.my_each do |element|
      yield element, index
      index += 1
    end
    self
  end

  def my_injec
  end

  def my_map
  end

  def my_none?
  end

  def my_select
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    self.each do |element|
      yield element if block_given?
    end
    self
  end
end

class Hash
  def my_each
    self.each do |key, value|
      yield key, value if block_given?
    end
    self
  end
end
