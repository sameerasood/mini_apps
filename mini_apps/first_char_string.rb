#I don't like my friend Sam, so much so that my hatred spills over to anyone
#with a first name beginning with 'S'. I want a program that, when anyone types their name in,
#shouts at them if their name begins with an 'S'. Anyone else should just get a friendly greeting.

puts "Enter your name."
name = gets.chomp
first_char = name.chr
if first_char == "S"
  puts name.upcase
else
  puts "Hi " + name
end