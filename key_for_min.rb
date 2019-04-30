def key_for_min_value(name_hash)
  keyArray = []
  valueArray = [name_hash.first[1]]
  
  name_hash.each do |key, value|
    if value <= valueArray[0]
      valueArray.push(value)
      if value <= valueArray[0]
        keyArray.unshift(key)
      end
    elsif value > valueArray[0]
      valueArray.push(value)
      keyArray.push(key)
    end
  end
  puts keyArray[0]
end