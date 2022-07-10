puts "Welcome to NumbGuesser Ruby edition!"
puts "Please enter a number between 1 and 100: "
random_number = rand(1..100)
number = gets.chomp.to_i
versuche = 0

for i in 1..10
  if number < random_number
    puts "Your number is too low!"

  elsif number > random_number
    puts "Your number is too high!"

  elsif number > 100 || number < 1
    puts "Please enter a number between 1 and 100!"

  elsif number == random_number
    break

  end
  number = gets.chomp.to_i
  versuche += 1
end

if number == random_number
  puts "You guessed the number in #{versuche} tries!"
else
  puts "You didn't guess the number in 10 tries!"
end
