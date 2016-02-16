function is_abundant(n::Int)
    return proper_divisors(n) > n
end

function proper_divisors(n::Int)
    sum(filter(k -> n % k == 0, 1:(n - 1)))
end


abundant = filter(n -> is_abundant(n), 12:28111)
result = 0


for n in 1:28123
    contribution = n

    for a in abundant
        if a > n
            break
        end

        remainder = n - a

        if remainder in abundant
            contribution = 0
            break
        end
    end

    result += contribution
end


println(result)

