{ pkgs, ... }:
{
  languages.zig.enable = true;

  packages = with pkgs; [
    zls
  ];

  enterShell = ''
    echo "Zig development environment loaded!"
    zig version
  '';
}
