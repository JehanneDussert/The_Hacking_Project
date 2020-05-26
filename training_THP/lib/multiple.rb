def is_multiple_of_3_or_5?(current_number)
    current_number % 3 == 0 || current_number % 5 == 0 ? true : false
end

def sum_of_3_or_5_multiples(final_number)
    res = 0
    return "Not an integer" if ! final_number.is_a?(Integer) || final_number < 0
    return 0 if final_number <= 5
    for i in 1..final_number - 1 do
        if is_multiple_of_3_or_5?(i) == true then res += i end
    end
    res
end
