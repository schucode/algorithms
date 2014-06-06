require 'rubygems'
#require 'pry-debugger'

module ArrayUtil
  def self.max(array)
  	if array.length == 0
  		return nil
  	elsif array.length == 1
  		return array[0]
  	elsif array.length == 2
  		if array[0] > array[1]
  			return array[0]
  		else
  			return array[1]
  		end
  	end
  end

  def self.middle_element(array)
  end

  def self.sum_arrays(array1, array2)
  end
end
