function calculatePosition(filename)
    horizontalposition = 0
    depth = 0
    f = open(filename, "r")
    for line in readlines(f)
        splitted = split(line, " ")
        n = parse(Int64, splitted[2])
        if splitted[1] == "forward"
            horizontalposition += n
        elseif splitted[1] == "up"
            depth -= n
        elseif splitted[1] == "down"
            depth += n
        end
    end
    close(f)
    return horizontalposition * depth
end

function calculatePosition2(filename)
    horizontalposition = 0
    aim = 0
    depth = 0
    f = open(filename, "r")
    for line in readlines(f)
        splitted = split(line, " ")
        n = parse(Int64, splitted[2])
        if splitted[1] == "forward"
            horizontalposition += n
            depth += aim * n
        elseif splitted[1] == "up"
            aim -= n
        elseif splitted[1] == "down"
            aim += n
        end
    end
    close(f)
    return horizontalposition * depth
end

println(calculatePosition("example.txt"))
println(calculatePosition("input1.txt"))

println(calculatePosition2("example.txt"))
println(calculatePosition2("input1.txt"))