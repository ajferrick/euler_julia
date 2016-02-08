# a is term n-2, b is term n-1
# c is the current Fibonacci number
a, b, c = 1, 2, 3

# Track the array of even numbers in this sequence
even_fibs = [2]

while c <= 4000000
    if c % 2 == 0
        push!(even_fibs, c)
    end

    # Discard a, b (n-1) is now a (n-2), c (n) is now (n-1)
    # Recompute C by adding terms (n-2) + (n-1)
    a, b, c = b, c, c + b
end

println(even_fibs)

