def timeAngle (hour_hand, minute_hand)
  # converting each hand into degrees
  hour_degree = (hour_hand * 30) + (30 * (minute_hand / 60.0)) 
  minute_degree = minute_hand * 6
  # comparing each hand's degree to find the angle. Begins with special cases.
  if (hour_degree == minute_degree) || (hour_degree == 360 && minute_degree == 0)
    puts(0)
  elsif hour_degree > minute_degree
    puts hour_degree - minute_degree
  else
    puts minute_degree - hour_degree
  end
end

# example call
timeAngle(1, 30)