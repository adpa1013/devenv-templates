{ pkgs, ... }:
{
  packages = with pkgs; [
    odin
    ols
  ];

  enterShell = ''
    echo "Odin development environment loaded!"
    odin version
  '';
}
