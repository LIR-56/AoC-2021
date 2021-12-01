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


function countByThree(filename)
    prev = 500000
    f = open(filename, "r")
    result = 0
    a = [0, 0, 0, 0]
    for i in 2:4
        a[i] = parse(Int64, readline(f))
    end
    for line in readlines(f)
        a[1] = a[2] #there should be linked list, but i'm too lazy, to bring it here
        a[2] = a[3]
        a[3] = a[4]
        a[4] = parse(Int64, line)
        if (a[4] > a[1])
            result += 1
        end
    end
    close(f)
    return result
end

println(count("example.txt"))
println(count("Input1.txt"))

println(countByThree("example.txt"))
println(countByThree("Input1.txt"))
