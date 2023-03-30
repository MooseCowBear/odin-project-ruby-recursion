def merge_sort(arr)
  return arr if arr.length < 2
  left = merge_sort(arr[...arr.length/2])
  right = merge_sort(arr[arr.length/2...])
  return merge(left, right)
end

def merge(left, right)
  result = []
  while left.length > 0 && right.length > 0
    if left[0] < right[0]
      result << left.shift
    else
      result << right.shift
    end
  end
  result.concat(left).concat(right) #in case one is not empty
end

pp merge_sort([1, 2, 3, 4]) # => [1, 2, 3, 4]
pp merge_sort([5, 4, 3, 2, 1]) # => [1, 2, 3, 4, 5]
pp merge_sort([1]) # => [1]
pp merge_sort([]) # => []