def who_is_bigger(a, b, c)
    arr = [a, b, c]
    if arr.include?(nil)
        return "nil detected"
    else
        return "#{ (arr.find_index(arr.max) + 97).chr } is bigger"
    end
end

def reverse_upcase_noLTA(str)

    rev_str = str.reverse!
    rev_str = rev_str.upcase
    rev_str = rev_str.gsub(/[LTA]/, "")
    return rev_str
end


def array_42(arr)
    return arr.include?(42)
end

def magic_array(arr)
    arr =arr.flatten
    arr = arr.sort()
    arr = arr.map {|e| e*2}
    arr = arr.reject {|x| x%3 == 0}
    arr = arr.uniq

    return arr
end

