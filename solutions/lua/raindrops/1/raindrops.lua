local rules = {
    {3, "Pling"},
    {5, "Plang"},
    {7, "Plong"},
}

local foo = function (n)
    local s = ""
    for _, rule in ipairs(rules) do
        if n % rule[1] == 0 then
           s = s .. rule[2] 
        end
    end

    if s == "" then
        s = tostring(n)
    end

    return s

end

return foo
