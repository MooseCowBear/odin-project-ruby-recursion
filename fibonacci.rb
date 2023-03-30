def fibs(n)
  result = [0, 1]
  return result[0...n] if n < 3

  3.upto(n) do |i|
    result << result[i - 1] + result[i - 2]
  end
  result
end

def fibs-rec(n)

end

