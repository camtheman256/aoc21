readings = readlines("day3/input.txt")

cols = [[reading[i] for reading in readings] for i in 1:length(readings[1])]

mostcommon = [convert(Int, count(==('1'), col) > 500) for col in cols]

gamma = parse(Int, join(mostcommon), base = 2)

not_mostcommon = [digit == 1 ? 0 : 1 for digit in mostcommon]

epsilon = parse(Int, join(not_mostcommon), base = 2)

print(gamma*epsilon)
