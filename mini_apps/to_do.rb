puts "Choose a room - hall or study"
room_input = gets.chomp

while true do 

if room_input =="hall"
  puts "You are in the hall. Choose - look or north"
  hall_room_input = gets.chomp
    if hall_room_input == "look"
    puts "You are standing in a hall with a marble floor. You see a door."
    end
    if hall_room_input == "north"
    room_input = "study"
    end
end


if room_input == "study" 
  puts "You are in the study. CHoose - look/ look at the desk/ south/ enter combination"
  study_room_input = gets.chomp
    if study_room_input == "look"
      puts "You are in a warm and cosy study. You see a safe. You see a desk."
    end
    if study_room_input == "south"
      room_input = "hall"
    end
end

end