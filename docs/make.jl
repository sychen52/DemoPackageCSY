using DemoPackageCSY
using Documenter

DocMeta.setdocmeta!(DemoPackageCSY, :DocTestSetup, :(using DemoPackageCSY); recursive=true)

makedocs(;
    modules=[DemoPackageCSY],
    authors="sychen52 <sychen52@gmail.com> and contributors",
    repo="https://github.com/sychen52/DemoPackageCSY.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageCSY.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://sychen52.github.io/DemoPackageCSY.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/sychen52/DemoPackageCSY.jl",
    devbranch="main",
)
