def average(arg1, arg2)
    (arg1.to_f + arg2.to_f) / 2
end

def average_array(arr)
    arr.inject{ |sum, el| sum + el }.to_f / arr.size
end

def repeat(string_arg, num_arg)
    string_arg*num_arg
end

def yell(string_arg)
    string_arg.upcase + "!"
end

def alternating_case(string_arg)
    count = 1
    return_string = string_arg.downcase.split.map! { |word|
        if count % 2 == 1
           new_word = word.upcase
        else
            new_word = word
        end
        count += 1
        new_word
    }
    return return_string.join(' ')
end
