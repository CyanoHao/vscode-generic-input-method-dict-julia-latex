using JSON

include("latex_symbols.jl")

result = [
	Dict(
		:label => chop(k, head = 1, tail = 0),
		:body => v,
		:description => v,
	) for (k, v) in latex_symbols
]

result = sort(result, by = e -> e[:label])

JSON.print(result, 4)
