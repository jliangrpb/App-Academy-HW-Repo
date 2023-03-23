def sum_to(n)
    if n == 1
        return 1
    elsif n < 1
        return nil
    else
        n + sum_to(n - 1)
    end
end

# p  sum_to(5)  # => returns 15
# p  sum_to(1)  # => returns 1
# p  sum_to(9)  # => returns 45
# p  sum_to(-8)  # => returns nil

def add_numbers(array)
    if array.length < 1
        return nil
    end
    if array.length == 1
        return array[0]
    else
        array[0] + add_numbers(array[1..-1])
    end
end

# p  add_numbers([1,2,3,4]) # => returns 10
# p  add_numbers([3]) # => returns 3
# p  add_numbers([-80,34,7]) # => returns -39
# p  add_numbers([]) # => returns nil

def gamma_fnc(num)
    if num == 0 
        return nil
    elsif num == 1
        return 1
    else
        (num - 1) * gamma_fnc(num - 1)
    end
end

# p  gamma_fnc(0)  # => returns nil
# p  gamma_fnc(1)  # => returns 1
# p  gamma_fnc(4)  # => returns 6
# p  gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors, favorite)
    if flavors.length < 1
        return false
    elsif flavors.length == 1 && flavors[0] == favorite
        return true
    elsif flavors.length == 1 && flavors[0] != favorite
        return false
    end 
        if flavors[0] == favorite 
            return true 
        end
        ice_cream_shop(flavors[1..-1], favorite)
end

# p  ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p  ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p  ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p  ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p  ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(string)
    if string.length < 1
        return ""
    elsif string.length == 1
        return string[0]
    else 
        reverse(string[1..-1]) + string[0]
    end
end

p  reverse("house") # => "esuoh"
p  reverse("dog") # => "god"
p  reverse("atom") # => "mota"
p  reverse("q") # => "q"
p  reverse("id") # => "di"
p  reverse("") # => ""