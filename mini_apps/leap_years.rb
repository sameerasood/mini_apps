#A simple tool that will tell you whether a year is a leap year,
#according to the following rules:
#All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
#All years divisible by 100 but not by 400 are NOT leap years
#(e.g. 1700, 1800 and 1900 were not leap years)
#All years divisible by 4 and not by 100 ARE leap years
#(e.g. 2004, 2008 and 2012 were leap years)
#All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)
#Write a program that takes a start year and an end year and returns an array of all the leap years between.
#Write a program that when given a year, will return the closest leap year (this could be before or after the given year)


puts "Enter a year"
start_year = gets.chomp.to_i

if start_year % 400 == 0
  puts "#{start_year} is a leap year"
elsif start_year % 4 == 0 && start_year % 100 != 0
  puts "#{start_year} is a leap year"
else
  puts "#{start_year} is not a leap year"
end

def closet_leap(start_year)
  count = 0
  next_leap = start_year 
  while count < 4
    if next_leap % 400 == 0
      break
    elsif next_leap % 4 == 0 && next_leap % 100 != 0
      break
    end
  count += 1
  next_leap += count
  end

  count = 0
  previous_leap = start_year
  while count > -4
     if previous_leap % 400 == 0
      break
    elsif previous_leap % 4 == 0 && previous_leap % 100 != 0
      break
    end 
  count += 1
  previous_leap -= count
  end
  
  if start_year - previous_leap > next_leap - start_year
    puts "#{next_leap} is the closest leap year to #{start_year}"
  else
    puts "#{previous_leap} is the closest leap year to #{start_year}"
  end
end


puts "Enter an end year"
end_year = gets.chomp.to_i

def leap_list(start_year, end_year)
leap_array = []
leap = []
while start_year <= end_year
  leap_array.push(start_year)
  start_year += 1
end
leap_array.each do |year|
  if year % 400 == 0
    leap.push(year)
  elsif year % 4 == 0 && year % 100 != 0
    leap.push(year)
  end
end
puts leap
end

closet_leap(start_year)
leap_list(start_year, end_year)