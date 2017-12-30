def sum_of_even range
  sum = (0..range).sum do |i|
    if i.even?
      i
    else
      0
    end
  end
  puts "suma liczb parzystych w przedziale od 0 do #{range} wynosi: #{sum}"
end

loop do
  puts "Podaj jakąś liczbę naturalną: "
  n = gets.to_i
  if n < 0
    puts "Podano złą liczbę."
  else
    sum_of_even n
    break
  end
end
