# Tutorial

create a graph
```jldoctest; setup=:(using DemoPackageCSY)
julia> graph = [[2,3,4], [1,3,4], [1,2], [1,5,6], [4,6], [4,5]]
6-element Vector{Vector{Int64}}:
 [2, 3, 4]
 [1, 3, 4]
 [1, 2]
 [1, 5, 6]
 [4, 6]
 [4, 5]

julia> connected_components(graph)
1-element Vector{Any}:
 Any[5, 4, 6, 2, 3, 1]
```
