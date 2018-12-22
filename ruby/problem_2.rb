class Problem_2
  def initialize(options)
    @range = options[:range]
  end

  def execute
    total = 0

    prev_number = 1
    next_number = 2

    array_fibbo = []

    (1..@range).each do |number|
      if number == 1
        array_fibbo << number
        next
      end

      if number == 2
        array_fibbo << number
        next
      end

      total = prev_number + next_number

      if total < 4_000_000
        array_fibbo << total
      else
        break
      end

      prev_number = next_number
      next_number = total
    end

    puts total_of_even_values(array_fibbo)
  end

  def total_of_even_values(array)
    array.select { |number| number % 2 == 0 }.sum
  end
end

Problem_2.new(range: 4_000_000).execute

# 1,2,3,5,8,..

