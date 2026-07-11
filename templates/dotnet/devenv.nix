{ pkgs, ... }:
{
  languages.dotnet.enable = true;

  packages = with pkgs; [
    csharp-ls
  ];

  enterShell = ''
    echo ".NET development environment loaded!"
    dotnet --version
  '';
}
