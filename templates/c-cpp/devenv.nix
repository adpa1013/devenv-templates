{ pkgs, ... }:
{
  languages.c.enable = true;
  languages.cplusplus.enable = true;

  packages = with pkgs; [
    cmake
    clang-tools
    gdb
  ];

  enterShell = ''
    echo "C/C++ development environment loaded!"
    gcc --version
  '';
}
