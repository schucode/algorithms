module Set1
  def self.swap_small(array)
  	reading = array[0]
  	small = array[0]
  	(0...array.length).each do |i|
  		if array[i] <= reading
  			small = [array[i], i]
  			reading = array[i]
  		end
  	end
  	array[small[1]] = array[0]
  	array[0] = small[0]
  	return array
  end

  def self.find_sum_2(array, sum = 0)
    value = false
    sup = []
    sub = []
    if array.length == 0
      return false
    end
    array.each do |elem|
      if elem == 0
        return true
      elsif elem < 0
        sup << elem
      elsif elem > 0 
        sub << elem
      end
      sup.each do |m|
        sub.each do |n|
          if m === (-1)*n
            value = true
          end
        end
      end
    end  
    return value 
  end

  #think worst case
  def self.find_sum_3(array)
    value = false
    if array.length == 0
      return value
    end
    array.each do |loop1|
      array.each do |loop2|
        array.each do |loop3|
          if loop1+loop2+loop3 == 0 || loop3 == 0
            return true
          end
        end
      end
    end
    return value
  end

end






