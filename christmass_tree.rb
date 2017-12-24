def christmass_top (x = 7)
  1.step(7, 2) do |i|
    x.times do
        print " "
    end
    i.times do
      print "*"
    end
    print "\n"
    x -= 1
  end
end

def christmass_tree_flor (x)
  3.step(x, 2) do |i|
    (x-1).times do
      print " "
    end
    i.times do
      print "*"
    end
    print "\n"
    x -= 1
  end
end
def christmass_tree_trunk t
  t.times do
    print " "
  end
  print "*\n"
end

puts "Program generujący świąteczne drzewko."
loop do
  puts "Podaj ile pięter ma mieć choinka: "
  height = gets.to_i
  puts "Podaj jak szeroka ma być choinka(Minimalna szerokość to 7): "
  width =  gets.to_i
  if height < 1 && width < 7
    puts "podano złe parametry"
  else
    christmass_top (width)
    height.times do
      christmass_tree_flor (width)
    end
    christmass_tree_trunk width
    break
  end
end
