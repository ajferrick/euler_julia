primes = [2, 3]
current = 3
term = 10001

while length(primes) < term 
    current += 2

    if reduce(&, [current % p != 0 for p in primes])
        push!(primes, current)
    end
end

println(maximum(primes))
