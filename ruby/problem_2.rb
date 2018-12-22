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
      array_fibbo << total

      prev_number = next_number
      next_number = total
    end

    array_fibbo.sum
  end
end

puts Problem_2.new(range: 5).execute

# 1,2,3,5,8,..

