h = {a:1, b:2, c:3, d:4}


# get the key b
puts h[:b]

puts "----------"

# add the key e
puts h[:e] = 5

puts "----------"

puts h


h.delete_if { |k, v| v < 3.5 }

puts "----------"

#h.delete_if do |k, v|
   # v < 3.5
  #end

 puts h