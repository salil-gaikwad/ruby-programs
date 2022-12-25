class Sample
  def findDigit n
    n_split = n.to_s.split('')
    divisor = []
    n_split.each do |item|
      divisor.push item if item.to_i !=0 and n % item.to_i == 0
    end
    p divisor
    divisor.size
  end
end

puts Sample.new.findDigit 124
