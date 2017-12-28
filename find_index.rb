def find_index(array, value)
  flag = 0
  array.each_with_index do |item, index|
    if item == value
      puts "Index wartości #{value} wynosi #{index}"
      flag = 1
      break
    end
  end
  puts "Not found" if flag == 0
end

array_to_check = [4,7,9,7,43,90,213123,54,23,7]

puts "Podaj jakąś liczbę, aby sprawdzić, czy istnieje ona w tablicy, oraz sprawdzić jaki jest jej index."
n = gets.to_i

find_index(array_to_check, n)
