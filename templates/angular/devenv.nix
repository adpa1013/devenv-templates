{ pkgs, ... }:
{
  languages.javascript.enable = true;
  languages.typescript.enable = true;

  packages = with pkgs; [
    nodejs
    pnpm
  ];

  enterShell = ''
    echo "Angular development environment loaded!"
    node --version
  '';
}
