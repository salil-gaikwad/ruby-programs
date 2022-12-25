# Greed is a dice game where you roll up to five dice to accumulate
# points.  The following "score" function will be used to calculate the
# score of a single roll of the dice.
#
# A greed roll is scored as follows:
#
# * A set of three ones is 1000 points
#
# * A set of three numbers (other than ones) is worth 100 times the
#   number. (e.g. three fives is 500 points).
#
# * A one (that is not part of a set of three) is worth 100 points.
#
# * A five (that is not part of a set of three) is worth 50 points.
#
# * Everything else is worth 0 points.

def score(dice)
  total_score = 0
  occurrences_hash = dice.group_by(&:itself)
                         .transform_values(&:length)
  occurrences_hash.each_pair do |num, occurrences|
    three_occurances, remaining_occurances = occurrences.divmod(3)
    if num == 1
      total_score += three_occurances * 1000 + remaining_occurances  * 100
    elsif num == 5
      total_score += three_occurances * 500 + remaining_occurances  * 50
    else
      total_score += three_occurances * 100 * num
    end
  end
  total_score
end
puts score([1,1,1,1,1]) # => 1200
puts score([5,5,5,5,5]) # => 600
##############################################################################
