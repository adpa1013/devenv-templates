{ pkgs, ... }:
{
  languages.ocaml.enable = true;

  packages = with pkgs; [
    dune_3
    ocamlPackages.ocaml-lsp
    opam
  ];

  enterShell = ''
    echo "OCaml development environment loaded!"
    ocaml -version
  '';
}
