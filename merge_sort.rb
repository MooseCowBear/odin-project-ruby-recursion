def merge_sort(arr)
  return arr if arr.length < 2
  left = merge_sort(0...arr[arr.length/2])
  right = merge_sort(arr[arr.length/2...])
  return merge(left, right)
end

def merge(left, right)
  result = []
  while left.length > 0 && right.length > 0 #check that this works? 
    if left[0] < right[0]
      result << left.shift
    else
      result << right.shift
    end
  end
  result.concat(left).concat(right) #at least one will be empty
end