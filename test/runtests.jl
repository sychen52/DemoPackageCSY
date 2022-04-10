using DemoPackageCSY
using Test

function list_equal(l1, l2)
    return length(l1) == length(l2) && Set(l1) == Set(l2)
end

function create_graph(i)
    if i == 1
        return [
            [2, 3],     # list of nodes that can be reached from node 1
            [1],        # list of nodes that can be reached from node 2
            [1],        # ", node 3
            [5],        # ", node 4
            [4]]        # ", node 5
    elseif i == 2
        return Bool[
            1 1 1 0 0
            1 1 0 0 0
            1 0 1 0 0
            0 0 0 1 1
            0 0 0 1 1
        ]
    elseif i == 3
        return Bool[
            0 1 1 0 0
            1 0 0 0 0
            1 0 0 0 0
            0 0 0 0 1
            0 0 0 1 0
        ]
    else
        error("Not supported!")
    end
end

@testset "directly_connected" begin
    # Write your tests here.
    for i in 1:3
        graph = create_graph(i)
        @test list_equal(directly_connected(graph, 1), [1, 2, 3])
        @test list_equal(directly_connected(graph, 2), [1, 2])
        @test list_equal(directly_connected(graph, 3), [1, 3])
        @test list_equal(directly_connected(graph, 4), [4, 5])
        @test list_equal(directly_connected(graph, 5), [4, 5])
    end
end

@testset "reachable" begin
    # Write your tests here.
    for i in 1:3
        graph = create_graph(i)
        @test list_equal(directly_connected(graph, 1), [1, 2, 3])
        @test list_equal(directly_connected(graph, 2), [1, 2, 3])
        @test list_equal(directly_connected(graph, 3), [1, 2, 3])
        @test list_equal(directly_connected(graph, 4), [4, 5])
        @test list_equal(directly_connected(graph, 5), [4, 5])
    end
end

function cc_equal(c1, c2)
    if length(c1) != length(c2)
        return false
    end
    s1 = Set{Set{Int64}}()
    for l in c1
        s = Set(l)
        if length(l) != length(s)
            return false
        end
        push!(s1, s)
    end
    return s1 == Set(map(Set, c2))
end


@testset "connected_components" begin
    # Write your tests here.
    for i in 1:3
        graph = create_graph(i)
        @test cc_equal(connected_components(graph), [[1, 2, 3], [4, 5]])
    end
end
