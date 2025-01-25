mkdir target
ls src | where type == "dir" | get name
    | each { |folder| ls $"($folder)/main.typ"
    | insert folder ($folder| path relative-to src) } | flatten
    | select name folder
    | par-each { podman run --rm -v $"(pwd):/src" --entrypoint '["typst", "compile", "--root", "/src"]' ghcr.io/timon-schelling/typst-edit $in.name $"target/($in.folder)-{p}.svg"; $"target/($in.folder)-{p}.svg" }
    | echo ($in | table)

try { rm target/index.html }
ls target | sort-by name -n | get name
    | each { path relative-to target }
    | each { $"<a href=\"($in)\">($in | str replace -r '\.[^.]+$' '')<br>" }
    | append ""
    | prepend "<style> a { font-family: monospace; font-size: 2.2em; } </style>"
    | str join "\n"
    | save -f target/index.html
