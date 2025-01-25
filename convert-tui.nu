"" | save -f convert.tex
nano convert.tex
podman run --rm -v $"(pwd):/data" pandoc/latex convert.tex -o convert.typ
let folder = input "folder: src/"
mkdir $"./src/($folder)"
cp src/boilerplate.typ $"./src/($folder)/main.typ"
open convert.typ | prepend "" | save --append $"./src/($folder)/main.typ"
