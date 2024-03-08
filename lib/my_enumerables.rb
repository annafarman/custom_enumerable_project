module Enumerable
  # Your code goes here
  def my_all?
    self.my_each do |element|
      return false unless yield(element)
    end
    true
  end

  def my_any?
    self.my_each do |element|
      return true if yield(element)
    end 
    false
  end

  def my_count
    count = 0
    if block_given?
      self.my_each do |element|
        count += 1 if yield (element)
      end
    else
      self.my_each { count += 1 }
    end
    count
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
    self.my_each do |element|
      return false if yield(element)
    end
    true
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
