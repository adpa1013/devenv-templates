{ pkgs, ... }:
{
  packages = with pkgs; [
    swift
  ];

  enterShell = ''
    echo "Swift development environment loaded!"
    swift --version
  '';
}
