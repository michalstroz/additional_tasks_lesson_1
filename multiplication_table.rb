12.times do |i|
  if i == 0
    12.times do |j|
      if j <= 1
        print "%-3s" % " "
      else
        print "%-4d" % (j-1)
      end
    end
    print "\n"
  elsif i == 1
    12.times do |y|
      if y <= 1
        print "%-3s" % " "
      else
        print "%-4s" % "---"
      end
    end
    print "\n"
  else
    12.times do |z|
      if z == 0
        print "%-3d" % (i-1)
      elsif z == 1
        print "%-3s" % "|"
      else
        print "%-4d" % ((i-1)*(z-1))
      end
    end
    print "\n"
  end
end
