# Write a short program that prints each number from 1 to 100 on a new line. 
# For each multiple of 3, print "Fizz" instead of the number. 
# For each multiple of 5, print "Buzz" instead of the number. 
# For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.

class FizzBuzz
  def self.start
    begin
      init
    rescue => exception
      puts exception
    end
  end

  def self.range(start_number = 1, end_number = 100)
    (start_number..end_number).to_a
  end
  
  def self.init 
    range.each { |number| 
      if is_multiple_of(number, 3) && is_multiple_of(number, 5)
        puts "FizzBuzz"
      elsif is_multiple_of(number, 3)
        puts "Fizz" 
      elsif is_multiple_of(number, 5)
        puts "Buzz" 
      else
        puts number 
      end
    }
  end

  def self.is_multiple_of(number, multiple)
    number % multiple == 0
  end

end