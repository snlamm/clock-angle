# This method takes in an argument of a string (such as '4:30'), converts the hour and minute
# parts of it into integers. The until loop prompts for a response until a valid one is given. 
# Invalid responses are detected if input is not in the format mentioned above. This
# will catch all errors that are not in the proper format.
# The valid hour and minute integers are passed then into variables that recongfigures them into
# angles. Finally, the angles are subtracted from one another (which from which depends)
# on size, and the results are put on the terminal.


def timeAngle
  # prompt for an entry and loop until valid
  valid_time = true
  until valid_time == false
    puts "Please enter a time (ex. 3:30):"
  # split entry into separate items and join as hour and minute hands
    time = gets.chomp.split("")
      if time.size == 5 && time[2] == ":" 
      hour_hand = time[0..1].join.to_i
      minute_hand = time[3..4].join.to_i
      valid_time = false
    elsif time.size == 4 && time[1] == ":" 
      hour_hand = time[0].to_i
      minute_hand = time[2..3].join.to_i
      valid_time = false
    else 
      puts "Oops. That wasn't a valid entry. Let's try that again!"
    end
  end
  # convert each hand into degrees
  hour_degree = (hour_hand * 30) + (30 * (minute_hand / 60.0)) 
  minute_degree = minute_hand * 6
  # compare each hand's degree to find the angle. Begins with special cases.
  if (hour_degree == minute_degree) || (hour_degree == 360 && minute_degree == 0)
    puts "The angle is 0 degrees"
  elsif hour_degree > minute_degree
    puts "The angle is #{hour_degree - minute_degree} degrees"
  else
    puts "The angle is #{minute_degree - hour_degree} degrees"
  end
end

# call the method
timeAngle


