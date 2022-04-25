module DemoPackageCSY

function directly_connected(graph::Vector{Vector{Int64}}, start)
    ret = copy(graph[start])
    push!(ret, start)
    return ret
end

function directly_connected(graph::Matrix{Bool}, start)
    for i in 1:size(graph, 1)
        graph[i, i] = true
    end
    return findall(graph[start, :])
end

function n_nodes(graph::Vector{Vector{Int64}})
    return length(graph)
end

function n_nodes(graph::Matrix{Bool})
    return size(graph, 1)
end

"""
    reachable(graph, start)

- link to [`connected_components(graph)`](@ref)
"""
function reachable(graph, start)
    ret = Set()
    function helper(start)
        connected = directly_connected(graph, start)
        for c in connected
            if c ∉ ret
                push!(ret, c)
                helper(c)
            end
        end
    end
    helper(start)
    return collect(ret)
end

"""
    connected_components(graph)

Connected components.
"""
function connected_components(graph)
    ret = []
    visited = Set{Int64}()
    for i in 1:n_nodes(graph)
        if i in visited
            continue
        end
        reached = reachable(graph, i)
        union!(visited, Set(reached))
        push!(ret, reached)
    end
    return ret
end

export directly_connected, reachable, connected_components

include("interval.jl")
export Interval
end
