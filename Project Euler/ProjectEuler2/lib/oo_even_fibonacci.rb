class EvenFibonacci
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def get_even_fibonacci_sum
    first_num, second_num, sum = 1,2,0
    while second_num < self.limit
      sum += second_num if second_num.even?
      first_num, second_num = second_num, first_num + second_num
    end
    sum
  end

end