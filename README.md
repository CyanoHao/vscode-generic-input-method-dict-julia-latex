# [Julia LaTeX](https://docs.julialang.org/en/v1/manual/unicode-input/) dictionary<br>for VSCode [Generic Input Method](https://marketplace.visualstudio.com/items?itemName=mr-konn.generic-input-method) extension

## Use Case

The [unicode-math](https://www.ctan.org/pkg/unicode-math) package implemented Unicode maths for XeLaTeX and LuaLaTeX.

```latex
\documentclass{article}
\usepackage{unicode-math}

\begin{document}
  \[ ∇×𝐄 = -\frac{∂𝐁}{∂t} \]
\end{document}
```

This dictionary provides a convenient way to input Unicode math symbols. As easy as traditional LaTeX commands.

To get `∇×𝐄 = -\frac{∂𝐁}{∂t}` you just type:

```
\nab⇆\tim⇆\mbfE⇆␣=␣-\frac⇆\part⇆\mbfB⇆⇆\part⇆t
```

## How to Use

1. Download [`julia.json`](julia.json) or clone this repo.
1. Define an input method in `settings.json`.
   ```json
   {
     "generic-input-methods.input-methods": [
       ...,
       {
         "name": "Julia LaTeX",
         "commandName": "text.julia-latex",
         "languages": [ "latex" ],
         "triggers": [ "\\" ],
         "dictionary": [ "/path/to/julia.json" ],
       },
     ],
     ...
   }
   ```

## How to (Re)build

1. Install requirements.
   * [Julia](https://julialang.org/downloads/).
   * JSON.jl: `julia -e 'import Pkg; Pkg.add("JSON")'`.
1. Download `stdlib/REPL/src/latex_symbols.jl` from [Julia repo](https://github.com/JuliaLang/julia).
1. Run `julia dump.jl >julia.json`.

## Licenses

* `dump.jl`: the main source code, licensed under MIT.
* `latex_symbols.jl`: definition of symbols, part of Julia, licensed under MIT.
* `julia.json`: the output, public domain.
