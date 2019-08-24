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
    alphabet = ("a".."z").to_a
    new_message = ""
    message.each_char do |char|
        if alphabet.include?(char)
            old_index = alphabet.index(char)
            new_index = old_index + number
            new_message += alphabet[new_index % 26]
        else
            new_message += char
        end
    end
    new_message
end
