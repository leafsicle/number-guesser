min=0 
max=100
guess= (max+min)/2 
counter=0 
correct = "Type'y' for yes\n"
higher ="Type 'h' if your number is higher\n"
lower = "Type 'l' if your number is lower\n"

puts "I am going to guess your number. \n 
If you want to specify the maximum number, \nplease enter it in now or hit enter to default to 100"

user_max = gets.chomp
# check to see if there is an updated number
if user_max == ""
  # if the number does not exist or is empty default to 100
  max = 100
end
# if there is a value entered, ensure that it is of type number
# if user_max.type == "number"
#   p
# if the value IS a type of number then set it to the max value


puts "\nThink of a number between #{min} to #{max}. Got it?\n"
puts "Type 'h' if your number is from #{max+((min-max)/2)}-#{max}\n"
puts " Type 'l' if your number is from #{min}-#{min+((max-min)/2)}\n"

while true
  choice = gets.chomp

  #The next lines dictate that if the choice is 'y' for yes then the game 
  #is over and the terminal will return the number of turns used to guess the correct number
  if choice == "y"|| choice =="Y"
    if counter == 0
       counter+=1
    end
    if counter ==1 
      puts "I got it right in #{counter} turn!"
    end
    if counter >1 
      puts "I did it in #{counter} turns!"
    end
    sleep 3
    system('clear')
    system('ruby guess.rb')
    break
  end

  #The 'H' section says that the player's number is higher and therefore the cmoputer
  #will take the higher end of the range of numbers and will bisect the choices remaining 
  #from the last range of values
  if choice == 'h'|| choice =='H'
    correct
    min=guess+1
    guess= min+((max-min)/2)
    puts "Is your answer #{guess}?"
    puts  "#{correct} #{higher} #{lower}"
    counter+=1
  end

  if choice == 'l'|| choice =='L'
    correct
    max=guess-1
    guess= max+((min-max)/2)
    puts "Is your answer #{guess}?"
    puts "#{correct} #{higher} #{lower}"
    counter+=1
  end

  if guess<0  || guess > 1000
    puts "I think you have forgotten your number."
    sleep 4.2
    system('clear')
    system('ruby guess.rb')
  end
end


