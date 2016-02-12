function max_path(pyramid)

    max_paths = pyramid[1]

    for r in 2:length(pyramid)
        row = pyramid[r]
        new_paths = []

        for c in 1:length(row)
            col = row[c]

            if c == 1
                push!(new_paths, col + first(max_paths))
            elseif c == length(row)
                push!(new_paths, col + last(max_paths))
            else
                path_value = max(
                    col + max_paths[c-1],
                    col + max_paths[c]
                )
                push!(new_paths, path_value)
            end
        end

        max_paths = new_paths
    end
    
    maximum(max_paths)
end


println(max_path((
    [3],
    [7 4],
    [2 4 6],
    [8 5 9 3]
)))

println(max_path((
    [75],
    [95 64],
    [17 47 82],
    [18 35 87 10],
    [20 04 82 47 65],
    [19 01 23 75 03 34],
    [88 02 77 73 07 63 67],
    [99 65 04 28 06 16 70 92],
    [41 41 26 56 83 40 80 70 33],
    [41 48 72 33 47 32 37 16 94 29],
    [53 71 44 65 25 43 91 52 97 51 14],
    [70 11 33 28 77 73 17 78 39 68 17 57],
    [91 71 52 38 17 14 91 43 58 50 27 29 48],
    [63 66 04 68 89 53 67 30 73 16 69 87 40 31],
    [04 62 98 27 23 09 70 98 73 93 38 53 60 04 23]
)))

