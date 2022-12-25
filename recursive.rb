##############################################################################
# 1. W.A.P to find the factorial of a number
def factorial(num)
 return 1 if num == 1 # base case
 num * factorial(num - 1); # recursive step
end

puts factorial(4) # 24
##############################################################################
def fibonacci(n)
  #puts "Iterating for #{n}"
  return  n  if n <= 1
  fibonacci( n - 1 ) + fibonacci( n - 2 )
end
puts '*************'
puts fibonacci(6)
# 55
#############################################################################
def fib(num)
   i, j = 0, 1
   while i <= num
     puts i
     i, j = j, i + j
     #puts "i: #{i}, j: #{j}"
   end
end

puts fib(5)
#0
#1
#1
#2
#3
#5
#############################################################################
# W.A.P to find the sum of a numbers
# add(3) => 3+2+1 = 6
def add(num)
  return num if num == 0
  num + add(num-1)
end
puts add(10)
#############################################################################
