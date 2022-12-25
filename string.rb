##############################################################################
# 1. W.A.P to reverse each word of a string
str = "Hello                   World"
p str.gsub(/\w+/){|s| s.reverse } # "olleH                   dlroW"
p str.split(' ').map(&:reverse).join(' ') # "olleH dlroW"
##############################################################################
# 2. W.A.P to find the occurances of alphabets in string.
def find_alphabets_occurances(str)
  str.chars
     .map(&:downcase)
     .group_by(&:itself)
     .transform_values(&:length)
end

p find_alphabets_occurances('aaaaaAaaaaaBbbbbbbbbbbb')
# {"a"=>11, "b"=>12}
# For ruby 2.7+
#'aaaaaAaaaaaBbbbbbbbbbbb'.chars.tally #=> {"a"=>10, "A"=>1, "B"=>1, "b"=>11}
##############################################################################
# 3. Reverse a string without reverse method
str = 'I    Am    An   Indian'
new_str = ''
str.chars.each{|s| new_str = s + new_str}
new_str
##############################################################################
# W.A.P which accept parameter & retrun array of unique characters for string
# and duplicate characters for string
def tally(arr)
  arr.group_by(&:itself)
     .transform_values(&:length)
end

def find_uniq_in_string str
  tally(str.chars).select{|k, v| v == 1}.keys
end

def find_duplicate_in_array arr
  tally(arr).select{|k, v| v > 1}.keys
end

def string_array_problem par
  if par.class == String
    find_uniq_in_string par
  elsif par.class == Array
    find_duplicate_in_array par
  end
end

print string_array_problem 'deepika' # ["d", "p", "i", "k", "a"]
print string_array_problem [1, 2, 3, 4, 5, 6, 7, 7, 6, 5] # [5, 6, 7]
puts
##############################################################################
# W.A.P to create a pyramid of n rows

def pyramid(n)
  n.times { |index| puts ("*" * (index * 2 + 1)).center(n* 2 - 1)}
end

pyramid(5)
#     *
#    ***
#   *****
#  *******
# *********
##############################################################################
