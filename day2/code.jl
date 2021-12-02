horiz, depth, aim = 0, 0, 0

commands = split.(readlines("day2/input.txt"))

for (d, amt) in commands
    global horiz, depth, aim
    amt = parse(Int, amt)
    if d == "forward"
        horiz += amt
        depth += (amt*aim)
    elseif d == "up" aim -= amt
    else aim += amt end
end

print(horiz*depth)