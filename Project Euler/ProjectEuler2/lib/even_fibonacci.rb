def even_fibonacci_sum(num)
  fibonacci_numbers = fibonacci_numbers(num)
  even_fibonacci_numbers = is_even?(fibonacci_numbers)
  checked_even_fibonacci_numbers = check_limit(even_fibonacci_numbers, num)
  checked_even_fibonacci_numbers.reduce(:+)
end

def fibonacci_numbers(num)
  starting_number, next_num, fibonacci_numbers = 1, 2, [2]
  until starting_number > num
    fibonacci_number = starting_number + next_num
    fibonacci_numbers << fibonacci_number
    starting_number, next_num = next_num, fibonacci_number
  end
  fibonacci_numbers
end

def is_even?(fibonacci_numbers)
  fibonacci_numbers.select { |fibonacci_number| fibonacci_number.even? }
end

def check_limit(even_fibonacci_numbers, num)
  even_fibonacci_numbers.take_while { |fibonacci_number| fibonacci_number < num }
end