return {
    score = function (x, y)

        local d = math.sqrt(x ^ 2 + y ^ 2) -- compute the distance 
        -- compare the d, outer radius is 10, middle is 5 and innermost is 1
        local points = 0
        if d > 10 then
            points = 0
        elseif d <= 10 and d > 5 then
            points = 1
        elseif d > 1 and d <= 5 then
            points = 5
        else
            points = 10
        end

        return points
    end
}
