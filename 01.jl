function sum_filter(upper::Int)
    sum(filter(x -> x % 3 == 0 || x % 5 == 0, 1:upper))
end

println(sum_filter(9))
println(sum_filter(999)

