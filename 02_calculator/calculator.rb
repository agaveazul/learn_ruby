require 'pry'

def add(n1, n2)
addition = n1 + n2
end

def subtract(n1, n2)
substraction = n1 - n2

end

def sum(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum
end

def multiply(*num)
  num.inject(1) do |m, n|
    m = m * n
  end
end

def factorial(n)
  if n == 0
    f = 1
  elsif n < 0
    return "This functions requires a non-negative value."
  else
  (1..n).inject(1) do |f, n|
    f = f * n
    end
  end
end
