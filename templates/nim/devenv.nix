{ pkgs, ... }:
{
  languages.nim.enable = true;

  packages = with pkgs; [
    nimble
    nimlangserver
  ];

  enterShell = ''
    echo "Nim development environment loaded!"
    nim --version
  '';
}
