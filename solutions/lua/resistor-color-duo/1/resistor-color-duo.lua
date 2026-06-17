return {
    value = function (colors)
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
        return color_to_number[colors[1]] * 10 + color_to_number[colors[2]]
    end,
}
