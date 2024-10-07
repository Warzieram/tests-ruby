def ftoc(temperature_f)
    temperature_c = ((temperature_f - 32) / 1.8)
    return temperature_c.round(0)
end    

def ctof(temperature_c)

    temperature_f = (temperature_c * (9.0/5)) + 32
    return temperature_f.round(1)
end


puts ctof(37)