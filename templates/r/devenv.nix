{ pkgs, ... }:
{
  packages = with pkgs; [
    R
  ];

  enterShell = ''
    echo "R development environment loaded!"
    R --version
  '';
}
