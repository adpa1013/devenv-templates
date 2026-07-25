{ pkgs, ... }:
{
  packages = with pkgs; [
    scala
    sbt
    metals
  ];

  enterShell = ''
    echo "Scala development environment loaded!"
    scala --version
  '';
}
