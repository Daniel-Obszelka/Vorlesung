
using Random


wurf = rand(1:6)
@show wurf

if wurf == 6
    println("Juhu! Ich darf nochmal wuerfeln")
elseif wurf <= 3
    println("wurf <= 3")
else
    println("wurf 4 oder 5")
end


Random.seed!(123)

wurf = rand(1:6, 8)

# Index des (ersten) niedrigsten Wurfergebnisses
findmin(wurf)
res = findmax(wurf)
res

res[1]
res[2]


# Summe aller Augen
@show wurf
sum(wurf)


summe = 0
@show summe

#=
for i in 1:length(wurf)
    summe = summe + wurf[i]
end

@show summe
=#


while true
    temp = rand(1:6)
    println(temp)

    if temp == 6
        break
    end
end


println("Wurfle bis zur ersten 6")

zahlen = Int64[]

while true
    temp = rand(1:6)
    push!(zahlen, temp)
    println(temp)

    if temp != 6
        continue
    end

    break
end

@show zahlen


zahlen = Int64[]
anz6 = 0

while anz6 < 1
    temp = rand(1:6)
    push!(zahlen, temp)

    if temp == 6
        anz6 = anz6 + 1
    end
end

@show zahlen




