def time_string(time)
    seconds = time % 60
    time = time / 60
    hours = time % 60
    time = time / 60
    days = time 

    str = sprintf("%02d:%02d:%02d", days, hours, seconds)

    return str
end

puts time_string(66)