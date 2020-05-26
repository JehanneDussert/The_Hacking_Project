def my_key(key)
    while key > 25
        key -= 25
    end
    key
end

def my_new_str(str, key, new_str)
    i = 0
    while str[i]
        if (str[i].ord > 64 && (str[i].ord + key) < 91) || (str[i].ord > 96 && (str[i].ord + key) < 123)
            new_str << (str[i].ord + key).chr
        elsif (str[i].ord > 64 && str[i].ord < 91) || (str[i].ord > 96 && str[i].ord < 123)
            new_str << (str[i].ord - 26 + key).chr
        else
            new_str << str[i]
        end
        i += 1
    end
    new_str
end

def caesar_cipher(str, key)
    new_str = ""
    key = my_key(key)
    return new_str = my_new_str(str, key, new_str)
end
