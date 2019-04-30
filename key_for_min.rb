def key_for_min_value(name_hash)
  sorted_hash = []
  largest = 0
  smallest = 1 << 64 #apparently the largest fixnum
  
  name_hash.each do |key, value|
    if value > 0
      if value > largest
          sorted_hash.push(key)
          largest = value
      elsif value < smallest
          sorted_hash.unshift(key)
          smallest = value
      end
    elsif value < 0
      if value > smallest  
          sorted_hash.push(key)
          largest = value
      elsif value < smallest
          sorted_hash.unshift(key)
          smallest = value
      end
    end
  end
  sorted_hash[0]
end