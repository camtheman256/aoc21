nums = parse.(Int, readlines("day1/input.txt"))
windows = [nums[i]+nums[i+1]+nums[i+2] for i=1:length(nums)-2]

higher(l) = sum(l[i+1]>l[i] for i=1:length(l)-1)

println(higher(nums))
println(higher(windows))