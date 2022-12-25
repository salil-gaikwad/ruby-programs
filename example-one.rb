# 1. How to find the occurances of alphabets in string.

def find_alphabets_occurances(str)
  str.chars
     .map(&:downcase)
     .group_by(&:itself)
     .transform_values(&:length)
end

p find_alphabets_occurances('aaaaaAaaaaaBbbbbbbbbbbb')
# {"a"=>11, "b"=>12}

##############################################################################
# 2. Find the prime numbers

def is_prime?(num)
  return true if (1..2).include? num
  (2..num/2).each do |n|
    if num % n == 0
      return false
    end
  end
  true
end

def find_prime_numbers(num)
  (1..num).select{|n| is_prime?(n) }
end

p find_prime_numbers(20)
# [1, 2, 3, 5, 7, 11, 13, 17, 19]
##############################################################################
# 3. Find if year is leap year or not

def is_leap?(year)
  year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
end

p is_leap?(2000)
# true
p is_leap?(2100)
# false
p is_leap?(2022)
# false
p is_leap?(2024)
# true
##############################################################################
# 4. Convert an array into hash
def array_to_hash(arr)
  arr = arr + [nil] if arr.length.odd?
  Hash[*arr]
end

p array_to_hash(['apple', 1, 'banana', 2])
p array_to_hash(['apple', 1, 'banana', 2, 'grapes'])
##############################################################################
