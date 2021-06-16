def absSort(arr)
  hash = {}
  arr.each do |el|
    if hash[el.abs]
      hash[el.abs] << el if el.positive?
      hash[el.abs].unshift(el) if el.negative?
    else
      hash[el.abs] = [el]
    end
  end
  hash_keys_sorted = hash.keys.sort
  result = []
  hash_keys_sorted.each do |hash_arr|
    hash[hash_arr].each do |el|
      result << el
    end
  end
  result
end

arr = [2, -7, -2, -2, 0]
p absSort(arr)