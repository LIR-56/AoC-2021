function count(filename)
    prev = 500000
    f = open(filename, "r")
    result = 0
    for i in readlines(f)
        next = parse(Int64, i)
        if (next > prev)
            result += 1
        end
        prev = next
    end
    close(f)
    return result
end

println(count("example.txt"))

println(count("Input1.txt"))