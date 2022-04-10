using DemoPackageCSY
using Test

@testset "min_max" begin
    i = Interval(3, 5)
    @test minimum(i) == 3
    @test maximum(i) == 5
end

@testset "in" begin
    i = Interval(3, 5)
    @test 4 in i
    @test 4 ∈ i
    @test !(6 in i)
    @test !(6 ∈ i)
    @test 6 ∉ i
end

@testset "isempty" begin
    @test isempty(Interval(3, 5)) == false
    @test isempty(Interval(4, 3))
end

@testset "issubset" begin
    i1 = Interval(3, 5)
    i2 = Interval(3, 4)
    i3 = Interval(4, 6)
    @test issubset(i2, i1)
    @test i2 ⊆ i1
    @test !issubset(i3, i1)
    @test i3 ⊈ i1
end

@testset "intersect" begin
    i1 = Interval(3, 5)
    i2 = Interval(4, 6)
    @test intersect(i2, i1) == Interval(4, 5)
    @test i2 ∩ i1 == Interval(4, 5)
end

function print_to_string(interval)
    # buf = IOBuffer()
    # show(buf, interval)
    # return String(take!(buf))
    return sprint(show, interval)
end

@testset "show" begin
    i1 = Interval(3, 5)
    i2 = Interval(6, 7)
    @test print_to_string(i1) == "\u301a3, 5\u301b"
    @test print_to_string(i2 ∩ i1) == "∅"
end
