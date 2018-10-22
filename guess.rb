min=0
max=1000
guess= 500 #this is the middle of the range of #'s'
counter=0

puts "Pick a number between 0 and 1000"
puts "is your number between 501 and 1000?"
puts " Type\'y\' for yes, \'h\' for higher number or \'l\' for min number\n"

while true
  choice = gets.chomp

  if choice == "y"
    puts "I did it in #{counter} turns!"
    break
  end

  if choice == "h"
    min=guess+1
    guess= ((max-min)/2)+min

    puts "Is your answer #{guess}?"
    counter+=1
  end

  if choice == "l"
    max=guess-1
    guess= ((min-max)/2)+max
    puts "Is your answer #{guess}?"
    counter+=1
  end
end


