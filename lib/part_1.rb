def average(arg1, arg2)
    (arg1 + arg2) / 2.0
end

def average_array(arr)
    arr.sum / (arr.length * 1.0)
end

def repeat(string_arg, num_arg)
    string_arg*num_arg
end

def yell(string_arg)
    string_arg.upcase + "!"
end

def alternating_case(string_arg)
    words = string_arg.split(" ")
    new_words = words.map.with_index do |word, i|
        if i % 2 == 0
            word.upcase
        else
            word.downcase
        end
    end
    new_words.join(" ")
end
