#############################################################################
# W.A.P to find Missing number
def find_missing_numbers(arr)
  (1..10).to_a - arr
end

puts find_missing_numbers([3,4,5,2,6,8,9,1])
# [7, 10]
#############################################################################
# W.A.P to phone number
ef decorate phone_number
  new_phone_number = ''
  phone_number.chars.each_with_index do |char, index|
    new_phone_number += '-' if !index.zero? && char.to_i.odd? && phone_number[index-1].to_i.odd?
    new_phone_number += char
  end
  puts new_phone_number
end

decorate '9545066555'
# 9-5450665-5-5
#############################################################################
