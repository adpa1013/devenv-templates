{ pkgs, ... }:
{
  languages.java.enable = true;

  packages = with pkgs; [
    gradle
    maven
  ];

  enterShell = ''
    echo "Java development environment loaded!"
    java -version
  '';
}
