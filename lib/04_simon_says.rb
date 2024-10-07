def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, number=2)
    ret = [].fill(word, 0, number)

    return ret.join(" ")
end 


def start_of_word(word, number)
    return word[0..number-1]
end

def first_word(str)
    return str.split(" ")[0]
end

def titleize(str)
    str = str.split(" ")
    str[0] = str[0].capitalize

    for wordi in 1..str.length-1 do
        if str[wordi].length > 3
            str[wordi] = str[wordi].capitalize
        end
    end

    return str.join(" ")
end
