var documenterSearchIndex = {"docs":
[{"location":"reference/#Reference","page":"Reference","title":"Reference","text":"","category":"section"},{"location":"reference/","page":"Reference","title":"Reference","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"CurrentModule = DemoPackageCSY","category":"page"},{"location":"#DemoPackageCSY","page":"Home","title":"DemoPackageCSY","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for DemoPackageCSY.","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [DemoPackageCSY]","category":"page"},{"location":"#DemoPackageCSY.Interval","page":"Home","title":"DemoPackageCSY.Interval","text":"Interval(min, max)\n\nInterval struct\n\n\n\n\n\n","category":"type"},{"location":"#Base.minimum-Tuple{Interval}","page":"Home","title":"Base.minimum","text":"Base.minimum(interval::Interval)\n\nReturn the minimum of an interval\n\n\n\n\n\n","category":"method"},{"location":"#Base.show-Tuple{IO, Interval}","page":"Home","title":"Base.show","text":"Base.show(io::IO, interval::Interval)\n\nShow.\n\nExample\n\njulia> Interval(1,2)\n〚1, 2〛\n\n\n\n\n\n","category":"method"},{"location":"#DemoPackageCSY.connected_components-Tuple{Any}","page":"Home","title":"DemoPackageCSY.connected_components","text":"connected_components(graph)\n\nConnected components.\n\n\n\n\n\n","category":"method"},{"location":"#DemoPackageCSY.reachable-Tuple{Any, Any}","page":"Home","title":"DemoPackageCSY.reachable","text":"reachable(graph, start)\n\nlink to connected_components(graph)\n\n\n\n\n\n","category":"method"},{"location":"tutorial/#Tutorial","page":"Tutorial","title":"Tutorial","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"create a graph","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"julia> graph = [[2,3,4], [1,3,4], [1,2], [1,5,6], [4,6], [4,5]]\n6-element Vector{Vector{Int64}}:\n [2, 3, 4]\n [1, 3, 4]\n [1, 2]\n [1, 5, 6]\n [4, 6]\n [4, 5]\n\njulia> connected_components(graph)\n1-element Vector{Any}:\n Any[5, 4, 6, 2, 3, 1]","category":"page"}]
}
