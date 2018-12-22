#
# Solution to Project Euler problem 2
# Copyright (c) Philip Lambok.
# All right reserved
#

class Problem_2
  def initialize; end

  def execute
    total_number, prev_number, next_number = 0, 1, 2

    collection_number = [prev_number, next_number]

    while total_number < 4_000_000
      total_number = prev_number + next_number

      collection_number << total_number

      # Update prev and next number
      prev_number, next_number = next_number, total_number
    end

    total_of_even_array(collection_number)
  end

  # Get all the sum even number of array
  def total_of_even_array(array)
    array.select { |number| number % 2 == 0 } .sum
  end
end

puts Problem_2.new.execute
