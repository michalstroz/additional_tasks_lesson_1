def receiving_data
  puts "Enter first number: "
  number_1 = gets.to_f
  puts "Enter second number: "
  number_2 = gets.to_f

  return number_1, number_2
end

def actions number
  case number
  when 1
    array =  receiving_data
    return array[0] + array[1]
  when 2
    array =  receiving_data
    return array[0] - array[1]
  when 3
    array =  receiving_data
    return array[0] * array[1]
  when 4
    if array[1] != 0
      array =  receiving_data
      return array[0] / array[1]
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
