#take int >= 0

def fibs(n)
  result = [0, 1]
  return result[0...n] if n < 3

  2.upto(n - 1) do |i|
    result << result[i - 1] + result[i - 2]
  end
  result
end

def fibs_rec(n)
  return [0, 1][0...n] if n < 3
  result = fibs_rec(n - 1)
  result << result[result.length - 1] + result[result.length - 2]
end

puts "fibs called on 0 - 8:"
9.times do |i|
  pp fibs(i)
end

puts "fibs_rec called on 0 - 8:"
9.times do |i|
  pp fibs_rec(i)
end

# both output: 
# => []
# => [0]
# => [0, 1]
# => [0, 1, 1]
# => [0, 1, 1, 2]
# => [0, 1, 1, 2, 3]
# => [0, 1, 1, 2, 3, 5]
# => [0, 1, 1, 2, 3, 5, 8]
# => [0, 1, 1, 2, 3, 5, 8, 13]