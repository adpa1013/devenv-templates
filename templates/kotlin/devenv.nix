{ pkgs, ... }:
{
  languages.kotlin.enable = true;

  packages = with pkgs; [
    gradle
  ];

  enterShell = ''
    echo "Kotlin development environment loaded!"
    kotlin -version
  '';
}
