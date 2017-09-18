
# Given an array of numbers having size N
# in which every number is between 1 and N,
# determine if there are any duplicates in it.
# You are allowed to destroy the array if you like.
# Do not sort the array or use bit vectors.
# Try to work within the array without using any
# other temporary data structures.
# Do not use 2 nesting for loops since the time
# complexity would be high.
# Try to find a solution by executing just one loop.
class Problem3
  # @param [Array] numbers
  # @return [boolean]
  def self.has_duplicates(numbers)
    return false if numbers.nil? || numbers.empty?
    (0..numbers.size - 1).each do |i|
      return true if numbers[numbers[i].abs] < 0
      numbers[numbers[i].abs] = -numbers[numbers[i].abs]
    end
    false
  end
end
