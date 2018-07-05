def fizz_buzz
  num = (1..15).to_a

  num.each do |number|
    if number % 3 == 0 && number % 5 == 0
      puts "FizzBuzz"

    elsif number % 3 == 0
      puts "Fizz"

    elsif number % 5 == 0
      puts "Buzz"
      
    else
      puts number
    end
  end
end

fizz_buzz
