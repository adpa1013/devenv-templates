{ pkgs, ... }:
{
  packages = with pkgs; [
    julia
  ];

  enterShell = ''
    echo "Julia development environment loaded!"
    julia --version
  '';
}
