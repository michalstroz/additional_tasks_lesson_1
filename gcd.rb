def gcd a, b
  b == 0 ? a : gcd(b, a%b)
end

number1 = ARGV[0].to_i
number2 = ARGV[1].to_i

puts (gcd number1,number2)
