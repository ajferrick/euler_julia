for a in 1:1000
    for b in 1:1000
        c = sqrt(a^2 + b^2)

        if (a + b + c) == 1000
            println(a*b*c)
            break
        end
    end
end
