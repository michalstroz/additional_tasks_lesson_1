def christmass_tree (floors_quantity=1)
  top_basis = 1
  bottom_basis = 7
  width = bottom_basis

  (floors_quantity-1).times do
    width = 2*width + 1
  end

  width /= 2
  trunk_distance = width

  floors_quantity.times do
    top_basis.step(bottom_basis, 2) do |i|
      (width).times {print " "}
      i.times {print "*"}
      print "\n"
      width -= 1
    end
    width = width + top_basis + 2
    top_basis = 2*top_basis + 1
    bottom_basis = 2*bottom_basis + 1
  end
  trunk_distance.times {print " "}
  print "*\n"
end

puts "Program generujący choinkę."
loop do
  print "Napisz jak dużo pięter powinno mieć świąteczne drzewko: "
  n = gets.chomp.to_i
  if n < 1
    puts "Podano złą wartość. Proszę wybrać jeszcze raz."
  else
    christmass_tree(n)
    break
  end
end
