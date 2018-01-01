def actions number
  order_1 = "Enter first number: "
  order_2 = "Enter second number: "

  case number
  when 1
    print order_1
    number_1 = gets.to_f
    print order_2
    number_2 = gets.to_f
    return number_1 + number_2
  when 2
    print order_1
    number_1 = gets.to_f
    print order_2
    number_2 = gets.to_f
    return number_1 - number_2
  when 3
    print order_1
    number_1 = gets.to_f
    print order_2
    number_2 = gets.to_f
    return number_1 * number_2
  when 4
    print order_1
    number_1 = gets.to_f
    print order_2
    number_2 = gets.to_f
    if number_2 != 0
      return number_1/number_2
    else
      puts "Bad values were given."
    end
  when 5
    puts "Thank you for using my calculator."
    exit
  else
    puts "Bad values were given."
  end
end

loop do
  puts "Choose operation:"
  puts "1. Add numbers"
  puts "2. Subtract numbers"
  puts "3. Multiply numbers"
  puts "4. Divide numbers"
  puts "5. Quit"
  print "What is your choice?: "
  choice = gets.to_i
  puts(actions choice)
end
