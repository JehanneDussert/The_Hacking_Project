def roll_dice
    dice = rand(1..6)
    return dice
end

def move(dice, step)
    if dice == 5 || dice == 6
        puts "Bravo, tu as fait #{dice} ! Tu avances d'une case."
        step += 1
    elsif dice == 1
        puts "Oh non, tu as fait 1... Tu descends d'une marche."
        if step > 0
            step -= 1
        end
    else dice == 2 || dice == 3 || dice == 4
        puts "Tu as fait #{dice}, tu n'avances ni ne recules pas."
    end
    return step
end

def play
    step = 0
    i = 0
    count = 0
    while step < 10
        dice = roll_dice
        step = move(dice, step)
        puts "Tu es maintenant à la marche #{step}"
        if step == 10
            puts "* ||  BRAVO TU AS GAGNÉ !  || *"
        end
        count += 1
    end
    return count
end

def average_finish_time
    i = 1
    average = 0
    while i <= 100
        puts "     ||| PARTIE #{i} |||     "
        average += play
        i += 1
    end
    puts "Voici le nombre de tours moyens pour arriver à la 10eme marche : #{average / 100}"
end

def perform
    average_finish_time
end

perform
