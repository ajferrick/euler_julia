function collatz_length(init)
    l = 0
    n = init

    while n != 1
        l += 1
        if n % 2 == 0
            n /= 2
        else
            n = (3 * n) + 1
        end
    end

    l
end

max_length = 0
max_init = 0

for i in 1:1000000
    l = collatz_length(i)

    if l > max_length
        max_init = i
        max_length = l
    end
end

println(max_init, ":   ", max_length)

