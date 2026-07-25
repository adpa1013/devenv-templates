{ pkgs, ... }:
{
  languages.c.enable = true;

  packages = with pkgs; [
    gcc
    gdb
    gnumake
    clang-tools
  ];

  enterShell = ''
    echo "C development environment loaded!"
    gcc --version
  '';
}
