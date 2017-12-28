def fibonacci (n)
  a = 0
  b = 1
  (0..n).each do |i|
    if i <= 1
      puts i
    else
      a,b = b,a+b
      puts b
    end
  end
end

puts "Program wyznaczający kolejne liczby ciągu Fibonacciego."
print "Podaj liczbę naturalną, która będzie argumentem ciągu: "
loop do
  value = gets.to_i
  if value < 0
    print "Podaj liczbę naturalną: "
  else
    fibonacci (value)
    break
  end
end
