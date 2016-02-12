d = Dict(
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
)
twenty = vcat(["twenty"], [string("twenty", d[n]) for n in 1:9])
thirty = vcat(["thirty"], [string("thirty", d[n]) for n in 1:9])
forty = vcat(["forty"], [string("forty", d[n]) for n in 1:9])
fifty = vcat(["fifty"], [string("fifty", d[n]) for n in 1:9])
sixty = vcat(["sixty"], [string("sixty", d[n]) for n in 1:9])
seventy = vcat(["seventy"], [string("seventy", d[n]) for n in 1:9])
eighty = vcat(["eighty"], [string("eighty", d[n]) for n in 1:9])
ninety = vcat(["ninety"], [string("ninety", d[n]) for n in 1:9])

a = vcat(collect(values(d)), twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety)

one = [string("one hundred and ", x) for x in a]
two = [string("two hundred and ", x) for x in a]
three = [string("three hundred and ", x) for x in a]
four = [string("four hundred and ", x) for x in a]
five = [string("five hundred and ", x) for x in a]
six = [string("six hundred and ", x) for x in a]
seven = [string("seven hundred and ", x) for x in a]
eight = [string("eight hundred and ", x) for x in a]
nine = [string("nine hundred and ", x) for x in a]

bases = [
    "one hundred",
    "two hundred",
    "three hundred",
    "four hundred",
    "five hundred",
    "six hundred",
    "seven hundred",
    "eight hundred",
    "nine hundred",
    "one thousand"
]

all = vcat(a, one, two, three, four, five, six, seven, eight, nine, bases)

x = sum(map(w -> length(replace(w, " ", "")), all))

println(x)

