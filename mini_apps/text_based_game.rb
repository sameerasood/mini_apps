#The user starts by facing forward. They can move right, left, or forward.
#If they move right, they die (there's a goblin). If they move left, they die (there's a werewolf).
#If they move forward, they live. They have to do this twice to win.

n=0
puts "Welcome user. Choose your direction -- left, right, forward"
while n<2 do
direction = gets.chomp
if direction == "left"
  puts "Oh ho, there's a goblin"
  break
elsif direction == "right"
  puts "Oh ho, there's a werewolf."
  break
elsif direction == "forward"    
  puts "You live. Move ahead."
  n += 1
else puts "Try again."
end
end
if n == 2
  puts "You win"
end