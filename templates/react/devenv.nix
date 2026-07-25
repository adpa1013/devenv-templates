{ pkgs, ... }:
{
  languages.javascript.enable = true;
  languages.typescript.enable = true;

  packages = with pkgs; [
    nodejs
    pnpm
    biome
  ];

  enterShell = ''
    echo "React development environment loaded!"
    node --version
  '';
}
