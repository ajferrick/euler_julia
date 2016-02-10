# Memoize for performance
move_cache = Dict{Tuple{Int, Int}, Int}()

function moves(right, down)
    if haskey(move_cache, (right, down))
        # Pass
    elseif right == 0 || down == 0
        move_cache[(right, down)] = 1
    else
        move_cache[(right, down)] = moves(right - 1, down) + moves(right, down - 1)
    end
    move_cache[(right, down)]
end

println(moves(20, 20))

