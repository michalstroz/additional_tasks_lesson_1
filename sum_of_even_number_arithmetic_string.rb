def sum_of_even range
  sum = ((2+range)/2)*(range/2)
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
