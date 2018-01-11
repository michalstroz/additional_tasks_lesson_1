def find_index(array, value)
  array.index(value)
end

array_to_check = [4,7,9,7,43,90,213123,54,23,7]

puts "Podaj jakąś liczbę, aby sprawdzić, czy istnieje ona w tablicy, oraz sprawdzić jaki jest jej index."
n = gets.to_i

index = find_index(array_to_check, n)
if index == nil
  puts "Not found"
else
  puts "Index wartości #{n} wynosi #{index}"
end
