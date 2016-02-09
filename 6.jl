sum_of_squares = sum(map(x -> x^2, 1:100))
square_of_sums = sum(1:100)^2
println(square_of_sums - sum_of_squares)
