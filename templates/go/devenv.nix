{ pkgs, ... }:
{
  languages.go.enable = true;

  packages = with pkgs; [
    golangci-lint
  ];

  enterShell = ''
    echo "Go development environment loaded!"
    go version
  '';
}
