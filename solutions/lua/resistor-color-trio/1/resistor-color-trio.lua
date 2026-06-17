return {
    label = function (c1, c2, c3)
        local color_to_number = {
            ['black'] = 0,
            ['brown'] = 1,
            ['red'] = 2,
            ['orange'] = 3,
            ['yellow'] = 4,
            ['green'] = 5,
            ['blue'] = 6,
            ['violet'] = 7,
            ['grey'] = 8,
            ['white'] = 9,
        }

        local a = (color_to_number[c1] * 10 + color_to_number[c2]) * 10 ^(color_to_number[c3]) // 1 -- because I get back float, need to convert to int
        local value = 0
        local unit = ""
        if a == 0 then
          value = a
          unit = "ohms"
        elseif a % 10 ^ 9 == 0 then
            value = a // 10 ^ 9
            unit =  "gigaohms"
        elseif a % 10 ^ 6 == 0 then
            value = a // 10 ^ 6
            unit =  "megaohms"
        elseif a % 10 ^ 3 == 0 then
            value = a // 10 ^ 3
            unit = "kiloohms"
        else
            value = a
            unit = "ohms"
        end

        return value, unit
    end,
}