def hipsterfy(word)
    r = /.*\K[aeiou]/x
    word.sub(r, '')
end

def vowel_counts(str_arg)
    str_arg.downcase!
    {"a" => str_arg.scan(/(?=#{"a"})/).count,
    "e" => str_arg.scan(/(?=#{"e"})/).count,
    "i" => str_arg.scan(/(?=#{"i"})/).count,
    "o" => str_arg.scan(/(?=#{"o"})/).count,
    "u" => str_arg.scan(/(?=#{"u"})/).count}
end

def caesar_cipher(message, number)
    c_string = ""
    message.scan(/./) do |i|
        if("a".."z").include? (i.downcase)
            number.times {i = i.next}
        end
        c_string << i[-1]
    end
    c_string
end
