

using StatsBase


function fun()
    println(rand(1:6))
end

fun()


# Wurffunktion
# .) Anzahl der Wuerfe: n
# .) Seitenanzahl: seiten
# .) Gewichte

function wuerfeln(n)
    res = rand(1:6, n)
    return res
end

@show wuerfeln(10)





function wuerfeln(n::Integer, seiten::Integer)
    if seiten > 100 || seiten <= 0
        throw(DomainError(seiten, "1 <= seiten <= 100 muss gelten!"))
    end
    if n <= 0
        throw(ArgumentError("n muss >= 1 sein!"))
    end

    res = rand(1:seiten, n)
    return res
end

@show wuerfeln(10, 20)

# @show wuerfeln("Zehn", 20)

# @show wuerfeln(10, 200)
# wuerfeln(0, 20)


function wuerfeln(n::Integer, seiten::Integer, gewichte::Vector)
    if seiten > 100 || seiten <= 0
        throw(DomainError(seiten, "1 <= seiten <= 100 muss gelten!"))
    end
    if n <= 0
        throw(ArgumentError("n muss >= 1 sein!"))
    end

    res = sample(1:seiten, Weights(gewichte), n)
    return res
end

@show wuerfeln(10, 20)

@show wuerfeln(10, 6, [0, 0, 1, 0, 0, 4])



function wuerfeln(n::Integer, seiten::Integer = 6,
    gewichte::Vector = fill(1, seiten))
    if seiten > 100 || seiten <= 0
        throw(DomainError(seiten, "1 <= seiten <= 100 muss gelten!"))
    end
    if n <= 0
        throw(ArgumentError("n muss >= 1 sein!"))
    end

    res = sample(1:seiten, Weights(gewichte), n)
    return res
end


@show wuerfeln(10, 6)
@show wuerfeln(10, 6, [0, 0, 1, 0, 0, 4])



# Rückgabetyp definieren
# Gewichte näher spezifizieren
"""
    wuerfeln(n, seiten, gewichte)

Erzeugt n Wuerfelwuerfe mit seiten Seiten
"""
function wuerfeln(n::Integer, seiten::Integer = 6,
    gewichte::Vector{<:Real} = fill(1, seiten)) :: Vector{<:Integer}
    if seiten > 100 || seiten <= 0
        throw(DomainError(seiten, "1 <= seiten <= 100 muss gelten!"))
    end
    if n <= 0
        throw(ArgumentError("n muss >= 1 sein!"))
    end

    res = sample(1:seiten, Weights(gewichte), n)
    return res
end


@show wuerfeln(10, 6)
@show wuerfeln(10, 6, [0, 0, 1, 0, 0, 4])


# @show wuerfeln(10, [0, 0, 1, 0, 0, 4])



function wuerfeln(n::Integer; seiten::Integer = 6,
    gewichte::Vector{<:Real} = fill(1, seiten)) :: Vector{<:Integer}
    if seiten > 100 || seiten <= 0
        throw(DomainError(seiten, "1 <= seiten <= 100 muss gelten!"))
    end
    if n <= 0
        throw(ArgumentError("n muss >= 1 sein!"))
    end

    res = sample(1:seiten, Weights(gewichte), n)
    return res
end


@show wuerfeln(10, seiten = 20)
@show wuerfeln(10, gewichte = [0, 0, 1, 0, 0, 4])

@show wuerfeln(10, gewichte = [0, 0, 1, 0, 0, 4])

@show wuerfeln(gewichte = [0, 0, 1, 0, 0, 4], 10)




function mysum(x::Vector{<:Real})
    res = 0
    for i in 1:length(x)
        res = res + x[i]
    end
    return res
end

# mysum([1, 2, 3, 4])


x = wuerfeln(10^5)

@time mysum(x)
@time sum(x)

@time mysum(x)
@time sum(x)





function f() :: Nothing

    return 2
end

# f()

function f() :: Nothing
    println("Ich bin in f()")
    return  # return nothing
end

f()




