require "byebug"

def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def sum(arr)
  sum = 0
  arr.each{|el| sum += el}
  return sum
end

def multiply (num1, num2)
  return num1 * num2
end

def power (base, power)
  return base ** power
end

def factorial(num)
  (1..num).reduce(1, :*)
end
