def sum_of_even range
i = 0
sum = 0
  while i != range
    if i%2 == 0
      sum += i
    end
    i += 1
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
