
# Given an integer array of size N,
# compute the sum of all even numbers in this array
class Problem1
  # @param [Array] numbers
  def self.sum_of_even_numbers(numbers)
    return 0 if numbers.nil? || numbers.empty?
    sum = 0
    numbers.each { |x| sum += x.even? ? x : 0 }
    sum
  end
end
