sieve = collect(linspace(3, 2000001, 1000000))
primes = [2]

while length(sieve) > 0
    p = shift!(sieve)
    push!(primes, p)

    # Past this point, at least, multiples of the numbers popped from the sieve
    # will no longer appear in the sieve.
    if p < sqrt(2000000)
        filter!(k -> k % p != 0, sieve)
    end
end

println(sum(primes))

