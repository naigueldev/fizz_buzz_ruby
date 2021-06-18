# Write a short program that prints each number from 1 to 100 on a new line. 

# For each multiple of 3, print "Fizz" instead of the number. 

# For each multiple of 5, print "Buzz" instead of the number. 

# For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.


def init 
  (1..100).to_a.each { |number| 
    if number % 3 == 0 && number % 5 == 0
      puts "FizzBuzz"
    elsif number % 3 == 0
      puts "Fizz" 
    elsif number % 5 == 0
      puts "Buzz" 
    else
      puts number 
    end
  }
end

begin
  init
rescue => exception
  puts exception
end