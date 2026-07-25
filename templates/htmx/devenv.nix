{ pkgs, ... }:
{
  packages = with pkgs; [
    nodejs
    miniserve
  ];

  enterShell = ''
    echo "HTMX development environment loaded!"
  '';
}
