def fibs(n)
  a = 0
  b = 1
  arr = [a, b]
  n = n - 2
  while n > 0
    placeholder = b
    b = a + b
    arr << b
    a = placeholder
    n -= 1
  end
  arr
end

def fibs_rec(n)
  return [0,1] if n < 3
  arr = fibs_rec(n - 1)
  arr << arr[-1] + arr[-2]
end

#p fibs(16)

p fibs_rec(15)