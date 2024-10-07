def add(a, b)
    return a+b
end

def subtract(a, b)
    return a-b
end

def sum(arr)
    return arr.sum
end

def multiply(a, b)
    return a*b
end

def power(a, b)
    return a ** b
end

def factorial(x)
    if x == 0
        return 1
    end
    if x == 1
        return 1
    
    else
        return x * factorial(x-1)
    end
end