require 'rubygems'
#require 'pry-debugger'

module ArrayUtil

  def self.max(array)
  	a = array.sort
  	return a.pop
  end

  def self.middle_element(array)
    l = array.length
  	if l == 0
  		return nil
  	elsif l % 2 == 0 && l != 0 #if even
      a = array[(l/2)-1]
      b = array[l/2]
      return (((a+b).to_f)/2)
      #return "l = #{l}, a = #{a}, b = #{b}"
  	else  #if odd
  		return array[l/2]
  	end
  end

  def self.sum_arrays(array1, array2) #vector addition
    result = []
    array1.length.times do |i|
      result.push(array1[i]+array2[i])
    end
    return result
  end
end
