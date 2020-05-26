def signup
    puts "Please, define your password :"
    print "> "
    password = gets.chomp
    return password
end

def login(password)
    puts "Please, enter your password :"
    print "> "
    enter = gets.chomp
    while enter != password
        puts "ERROR : Wrong password. Please try again :"
        print "> "
        enter = gets.chomp
    end
    puts "Correct password !"
    welcome_screen
end

def welcome_screen
    puts "Welcome to the secret zone ! :)"
end

def perform
    login(signup)
end

perform