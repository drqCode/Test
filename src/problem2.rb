
# Given an integer array of size N,
# identify the largest 2 numbers in this array. Do not sort the array.
class Problem2
  # @param [Array] numbers
  # @return [Array]
  def self.largest_two_of(numbers)
    return nil if numbers.nil? || numbers.empty?
    return numbers if numbers.size == 1
    first = numbers[0]
    second = numbers[1]
    (2..numbers.size - 1).each do |i|
      if numbers[i] > first
        second = first
        first = numbers[i]
      elsif numbers[i] > second
        second = numbers[i]
      end
    end
    [second, first]
  end
end