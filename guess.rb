min=0 #this is the lowest possible value for the data set
max=1000 # this is the maximum value for our data set currently. It can increase limitlessly
guess= (max+min)/2 #this is the middle of the range of #'s'
counter=0 #this should start at 0. Clearly
correct = "Type\'y\' for yes\n"
higher ="Type \'h\' if your number is higher\n"
lower = "Type \'l\' if your number is lower\n"

puts "Think of a number between #{min} to #{max}. Got it?\n"
puts "Type \'h\' if your number is from #{max+((min-max)/2)}-#{max}\n"
puts " Type \'l\' if your number is from #{min}-#{min+((max-min)/2)}\n"

while true
  choice = gets.chomp

  #The next lines dictate that if the choice is 'y' for yes then the game 
  #is over and the terminal will return the number of turns used to guess the correct number
  if choice == "y"|| choice =="Y"
    puts "I did it in #{counter} turns!"
    sleep 3
    system('clear')
    system('ruby guess.rb')
    break
  end

  #The 'H' section says that the player's number is higher and therefore the cmoputer
  #will take the higher end of the range of numbers and will bisect the choices remaining 
  #from the last range of values
  if choice == "h"|| choice =="H"
    correct
    min=guess+1
    guess= min+((max-min)/2)
    puts "Is your answer #{guess}?"
    puts  "#{correct} #{higher} #{lower}"
    counter+=1
  end

  if choice == "l"|| choice =="L"
    correct
    max=guess-1
    guess= max+((min-max)/2)
    puts "Is your answer #{guess}?"
    puts "#{correct} #{higher} #{lower}"
    counter+=1
  end

  if guess<0  || guess > 1000
    puts "I think you have forgotten your number."
    sleep 3
    system('clear')
    system('ruby guess.rb')
  end
end


