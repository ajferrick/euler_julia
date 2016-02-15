f = open("resources/p022_names.txt")
names = sort(split(replace(readall(f), "\"", ""), ","))

total_score = 0

for (i, name) in enumerate(names)
    name_score = reduce((acc, el) -> acc + Int(el) - Int('A') + 1, 0, name)
    total_score += (i * name_score)
end

println(total_score)

