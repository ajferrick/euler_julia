fn_cache = Dict{Int, Int}()
fn_cache[1] = 1

function divisor_sum(n::Int)
    if !(n in keys(fn_cache))
        d = sum(filter(k -> n % k == 0, 1:(n - 1)))
        fn_cache[n] = d
    end
    fn_cache[n]
end

amicable = Set{Int}()

for a in 2:10000
    for b in 2:10000
        if a != b && a == divisor_sum(b) && b == divisor_sum(a)
            union!(amicable, [a, b])
        end
    end
end

println(sum(amicable))

