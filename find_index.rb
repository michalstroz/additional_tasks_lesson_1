def find_index(array, value)
  array.each_with_index do |item, index|
    if item == value
      return "Index wartości #{value} wynosi #{index}"
    end
  end
  return "Not found"
end

array_to_check = [4,7,9,7,43,90,213123,54,23,7]

puts "Podaj jakąś liczbę, aby sprawdzić, czy istnieje ona w tablicy, oraz sprawdzić jaki jest jej index."
n = gets.to_i

puts find_index(array_to_check, n)
