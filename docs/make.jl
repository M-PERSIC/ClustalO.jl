using ClustalO
using Documenter

DocMeta.setdocmeta!(ClustalO, :DocTestSetup, :(using ClustalO); recursive=true)

makedocs(;
    modules=[ClustalO],
    authors="Michael Persico <michael.a.persico@gmail.com> and contributors",
    repo="https://github.com/M-PERSIC/ClustalO.jl/blob/{commit}{path}#{line}",
    sitename="ClustalO.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://M-PERSIC.github.io/ClustalO.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="https://github.com/M-PERSIC/ClustalO.git",
    devbranch="main",
    push_preview = true,
    deps = nothing,
    make = nothing
)
