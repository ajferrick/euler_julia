palindrome = []

for x in 100:999
    for y in 100:999
        p = x * y
        if digits(p) == reverse(digits(p))
            push!(palindrome, p)
        end
    end
end

println(maximum(palindrome))

