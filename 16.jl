x = zeros(500)'
x[500] = 1

for i in 1:1000

    # Perform the incremental growth
    x = x + x

    # Perform digit carry-over for when two digits added together exceed 10.
    carry_over = 0
    for d in 1:500
        place = 501 - d
        x[place] += carry_over
        carry_over = round(x[place] / 10, RoundDown)
        x[place] = x[place] % 10
    end

end

println(sum(x))

