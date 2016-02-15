function big_multiplier(multiplicand, multiplier)

    product_size = length(multiplicand) + length(digits(multiplier))
    product = zeros(product_size)

    # Perform the multiplication
    for (i, digit) in enumerate(digits(multiplier))
        sub_product = zeros(i - 1) 
        carry_over = 0
        
        for m in reverse(multiplicand)
            p = (m * digit) + carry_over
            unshift!(sub_product, p % 10)
            carry_over = round(p / 10, RoundDown)
        end

        if carry_over > 0
            unshift!(sub_product, carry_over)
        end

        n = product_size - length(sub_product)

        prepend!(sub_product, zeros(n))
        product += sub_product
    end

    # Carry-over the addition
    final_product = []
    carry_over = 0

    for d in reverse(product)
        p = d + carry_over
        unshift!(final_product, p % 10)
        carry_over = round(p / 10, RoundDown)
    end

    if carry_over > 0
        unshift!(final_product, carry_over)
    end

    # Perform some trim
    while first(final_product) == 0
        shift!(final_product)
    end

    final_product
end


f = reduce((acc, i) -> big_multiplier(acc, i), [1], 2:100)
println(sum(f))

