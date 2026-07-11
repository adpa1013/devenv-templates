{ pkgs, ... }:
{
  languages.elixir.enable = true;

  packages = with pkgs; [
    elixir-ls
    beam29Packages.elixir-ls
  ];

  enterShell = ''
    echo "Elixir development environment loaded!"
    elixir --version
  '';
}
