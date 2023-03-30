def merge_sort(arr)

end

def merge(left, right)
  result = []
  while left && right 
    if left[0] < right[0]
      result << left.shift
    else
      result << right.shift
    end
  end
  if left 
    result.concat(left)
  elsif right
    result.concat(right)
  end
  result
end