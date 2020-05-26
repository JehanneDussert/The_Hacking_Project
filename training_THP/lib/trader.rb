def day_trader(tab)
    i = 0
    min = tab[0]
    max = tab[1]
    res = max - min
    strlen = tab.length
    puts strlen
    while tab[i]
        j = i + 1
        while tab[i] && tab[j] && j <= strlen + 1 && max < min
            min = tab[i]
            max = tab[j]
            puts "i deb while : #{i} et min :#{min}"
            puts "j deb while : #{j} et max :#{max}"
            while j < strlen && tab[j] < tab[i]
                if tab[j] > tab[i] 
                    max = tab[j]
                elsif j >= strlen
                    puts "par ici"
                    i += 1
                    j = i + 1
                end
                j += 1
                puts "i 3e if : #{i} et tab[i] : #{tab[i]}"
                puts "j 3e if : #{j} et tab[j] : #{tab[j]}"
                puts "max : #{max}"
            end
            puts "ici"
            if j >= strlen
                i += 1
                j = i + 1
                max = tab[j]
                min = tab[i]
                puts "i 1er if : #{i}"
                puts "j 1er if : #{j}"
            elsif tab[j] > tab[i]
                max = tab[j]
                min = tab[i]
                puts "i 2e if : #{i}"
                puts "j 2e if : #{j}"
            end
            puts "sortie"
            i += 1
            j = i + 1
        end
        j += 1
        i += 1
        puts "i fin while : #{i}"
        puts "j fin while: #{j}"
    end
    res
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1,4]