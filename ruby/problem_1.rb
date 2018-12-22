#
# Solution to Project Euler problem 1
# Copyright (c) Philip Lambok.
# All right reserved
#

class Integer
  def divided_with?(number)
    self % number == 0 ? true : false
  end
end

class Problem_1
  def initialize(options)
    @max_number = options[:max_number]
  end

  def execute
    total = 0
    @max_number.times do |number|
      if number.divided_with?(3) or number.divided_with?(5)
        total += number
      end
    end
    total
  end
end

puts Problem_1.new(max_number: 1000000000).execute

