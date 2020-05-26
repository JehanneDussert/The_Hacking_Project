# Say hello
def say_hello
    puts "Hello !"
end

say_hello

# Ask first name
def first_name
    puts "What's your name ?"
    print "> "
    first_name = gets.chomp
    puts "Hello #{first_name} !"
end

first_name

# Combo
def first_name(first_name)
    puts "Hello #{first_name} !"
end

def ask_first_name
    puts "What's your name ?"
    print "> "
    first_name = gets.chomp
    return first_name
end

def perform
    first_name(ask_first_name)
end

perform
