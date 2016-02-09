function prime_factors(target::Integer)
    prime_factors = Array(Float64, 0)

    for factor in linspace(3, target, div(target, 2))
        if target % factor == 0 && !any([factor % p == 0 for p in prime_factors])
            push!(prime_factors, factor) 
            println(prime_factors)
        end

        if reduce(*, prime_factors) == target
            break
        end
    end


    prime_factors
end

println(maximum(prime_factors(13195)))
println(maximum(prime_factors(600851475143)))

