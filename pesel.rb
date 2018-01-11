def check_pesel number
  array = []
  number_of_digits = number.length
  number = number.to_i
  if number_of_digits != 11 || number < 0
    return 0
  else
    for i in 0..10
      array[i] = number%10
      number = number/10
    end
    array = array.reverse
    sum = array[0]*1 + array[1]*3 + array[2]*7 + array[3]*9 + array[4]*1 + array[5]*3 + array[6]*7 + array[7]*9 + array[8]*1 + array[9]*3
    sum = sum%10
    sum = 10-sum
    sum = sum%10
    if sum == array[10]
      return array
    else
      return 0
    end
  end
end

def check_month_year array
  month = 10 * array[2] + array[3]
  year = 10 * array[0] + array[1]
  case month
  when 81..92
    year += 1800
    month -= 80
    return year,month
  when 1..12
    year += 1900
    return year,month
  when 21..32
    year += 2000
    month -= 20
    return year,month
  when 41..52
    year += 2100
    month -= 40
    return year,month
  when 61..72
    year += 2200
    month -= 60
    return year,month
  else
    return 0
  end
end

def check_day year, month, array
  if month == 2 && ((year%4 == 0 && year%100 != 0) || year%400 == 0)
    days = 29
  elsif month == 2
    days = 28
  else
    days = 31 - ((month-1)%7%2)
  end

  day_of_birth = array[4]*10 + array[5]
  if day_of_birth.between?(1,days)
    return day_of_birth
  else
    return 0
  end
end

def check_sex array
  if array[9]%2 == 0
    sex = "kobieta"
  else
    sex = "mężczyzna"
  end
end

pesel = check_pesel ARGV[0]
error_message = "Pesel #{ARGV[0]} jest nieprawidłowy."

if pesel == 0
  puts error_message
else
  year_month = check_month_year pesel
  if year_month == 0
    puts error_message
  else
    year = year_month[0]
    month = year_month[1]
    day = check_day year, month, pesel
    if day == 0
      puts error_message
    else
      puts "Pesel #{ARGV[0]} jest prawidłowy."
      puts "Informacje o peselu:"
      puts "Płeć: #{check_sex pesel}"
      puts " - data urodzenia: #{day}-#{month}-#{year}"
    end
  end
end
