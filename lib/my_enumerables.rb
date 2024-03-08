module Enumerable
  # Your code goes here
  def my_all_spec
  end

  def my_any_spec
  end

  def my_count_spec
  end

  def my_each_with_index_spec
  end

  def my_inject_spec
  end

  def my_map_spec
  end

  def my_none_spec
  end

  def my_select_spec
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
