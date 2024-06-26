using SpinWaveTheory
using Documenter

DocMeta.setdocmeta!(SpinWaveTheory, :DocTestSetup, :(using SpinWaveTheory); recursive=true)

makedocs(;
    modules=[SpinWaveTheory],
    authors="waltergu <waltergu1989@gmail.com> and contributors",
    sitename="SpinWaveTheory.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Quantum-Many-Body.github.io/SpinWaveTheory.jl",
        assets=["assets/favicon.ico"],
    ),
    pages=[
        "Home" => "index.md",
        "Examples" => [
            "examples/Introduction.md",
            "examples/SquareLatticeFerromagnet.md",
            "examples/SquareLatticeAntiFerromagnet.md",
            "examples/CrBr3.md",
        ],
        "Manual" => "manual.md",
    ],
)

deploydocs(;
    repo="github.com/Quantum-Many-Body/SpinWaveTheory.jl",
)
