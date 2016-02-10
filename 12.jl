# Basic algorithm:
# - Compute the next triangle number
# - Find its prime factorization
# - Find the exponents in the prime factorization
# - Calculate the number of divisors from the exponents
# - Continue until the number of divisors exceeds 500
primes = [2, 3, 5, 7, 11, 13, 17, 19]

triangle = 0
next_term = 0
divisors = 0

while divisors <= 500
    next_term += 1
    triangle += next_term
    divisor_prime = triangle

    p_counter = [p => 0 for p in primes]

    for p in primes
        while divisor_prime % p == 0
           divisor_prime /= p
           p_counter[p] += 1
        end
    end

    exponents = map(v -> (1 + v), [p_counter[p] for p in primes])
    divisors = reduce(*, exponents)

    println(next_term, ": ", triangle, "   ", divisors)
end

