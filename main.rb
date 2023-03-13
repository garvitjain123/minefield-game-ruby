require_relative "./minefield"


#  Initialize minefield
puts "\nMinefield"
minefield = Minefield.new(4,4)
minefield.print

# Set mines
puts "\nMinefield Arming"

if minefield.set_mines(4)
  puts "\nMinefield Armed"
  minefield.print
else
  puts "\nMinefield can't be mined"
end


# Calculate mines around
puts "\nCalculating Mines around"
minefield.count_nearby_misses
minefield.print
