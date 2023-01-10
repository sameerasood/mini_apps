round = 0
player1_d1 = 7
player1_d2 = 7
player2_d1 = 7
player2_d2 = 7

while round < 2 do
if rand(player1_d1)<rand(player2_d1) || rand(player1_d2)<rand(player2_d2)
  puts false
else
  round = round + 1
end

  if round == 2
   puts true
   break
  end

end

