def half_pyramid(number)
    i = 1
    while i <= number
        print " " * (number - i)
        puts "#" * i
        i += 1
    end
end

def full_pyramid(number)
    i = 1
    while i <= number
        print " " * (number - i)
        print "#" * i
        if i > 1
            print "#" * (i - 1)
        end
        puts " " * (number - i)
        i += 1
    end
end

def full_pyramid_inverse(number)
    i = 1
    while i < number
        print " " * i
        print "#" * ((number - i) * 2 - 1)
        puts " " * i
        i += 1
    end
end

def wtf_pyramid(number)
    full_pyramid(number)
    full_pyramid_inverse(number)
end

def check_error
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    number = (gets.chomp).to_i
    while number < 1 || number > 25
        puts "Erreur : merci de saisir un nombre entre 1 et 25"
        print "> "
        number = (gets.chomp).to_i
    end
    puts "Voici la pyramide :"
    return number
end

def perform
    number = check_error
    puts "| HALF PYRAMID |"
    half_pyramid(number)
    puts "| FULL PYRAMID |"
    full_pyramid(number)
    puts "| WTF PYRAMID |"
    wtf_pyramid(number)
end

perform
