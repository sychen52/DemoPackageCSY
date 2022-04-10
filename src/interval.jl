struct Interval{T<:Real}
    min::T
    max::T
end

function Base.minimum(interval::Interval)
    interval.min
end

function Base.maximum(interval::Interval)
    interval.max
end

function Base.in(num, interval::Interval)
    minimum(interval) <= num <= maximum(interval)
end

function Base.isempty(interval::Interval)
    minimum(interval) > maximum(interval)
end

function Base.issubset(interval1::Interval, interval2::Interval)
    minimum(interval1) >= minimum(interval2) && maximum(interval1) <= maximum(interval2)
end

function Base.intersect(interval1::Interval, interval2::Interval)
    Interval(max(minimum(interval1), minimum(interval2)),
        min(maximum(interval1), maximum(interval2)))
end

function Base.show(io::IO, interval::Interval)
    if isempty(interval)
        write(io, "∅")
    else
        write(io, "\u301a$(minimum(interval)), $(maximum(interval))\u301b")
    end
end
