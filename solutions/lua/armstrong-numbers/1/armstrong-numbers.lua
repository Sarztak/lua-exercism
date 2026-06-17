return {
    is_armstrong_number = function(number)
        local n = number
        local p = 0
        local arr = {}
        local am = 0

        while n > 0 do
            table.insert(arr, n % 10)
            n = n // 10
            p = p + 1
        end

        for _, i in ipairs(arr) do
            am = am + i ^ p
        end
        am = am // 1 -- convert from float to int as exponential creates floats
        return number == am
    end
}