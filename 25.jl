function add_vector_numbers(a, b)
    pointwise_sum = a + b

    carry = 0
    summation = []

    for s in reverse(pointwise_sum)
        d = (s + carry)
        unshift!(summation, Int(d % 10))
        carry = Int(round(d / 10, RoundDown))
    end

    if carry > 0
        unshift!(summation, carry)
    end

    summation
end

a = zeros(1000)
b = zeros(1000)
c = zeros(1000)

a[999:1000] = [0, 1]
b[999:1000] = [0, 2]
c[999:1000] = [0, 3]

i = 4

while c[1] == 0
    a, b, c = b, c, add_vector_numbers(b, c)
    i += 1
end

println(i, ":  ", join(c, ""))

