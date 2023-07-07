def compare_two_numbers(num1,num2)
    difference = num1 - num2
    
    case
    when difference > 0
        "#{num1} is greater than #{num2}"
    when difference < 0
        "#{num2} is greater than #{num1} "
    else difference == 0
        "#{num1} is equal to #{num2}"
    end
end


def ordered_count_characters(string)
    array_of_chars =[]
    s = 1
    for i in 0..string.length
        case
        when array_of_chars.include?(string[i])
            char_index=array_of_chars.find_index(string[i])
            array_of_chars[char_index+1].sum +=1
        else
            array_of_chars << [string[i],s]
        end
    end
    array_of_chars
end

puts ordered_count_characters "scissors"
#puts ordered_count_characters "tunaelewana"
#puts compare_two_numbers(2,8)