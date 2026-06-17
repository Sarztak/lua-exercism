local EliudsEggs = {}

function EliudsEggs.egg_count(number)
    -- need to just do a decimal to binary conversion but return the number 
    -- of one bits
    local one_count = 0
    while number > 0 do
        if number % 2 == 1 then
            one_count = one_count + 1
        end
        number = number // 2
    end

    return one_count
end

return EliudsEggs
