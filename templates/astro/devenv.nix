{ pkgs, ... }:
{
  languages.javascript.enable = true;
  languages.typescript.enable = true;

  packages = with pkgs; [
    nodejs
    pnpm
    astro-language-server
  ];

  enterShell = ''
    echo "Astro development environment loaded!"
    node --version
  '';
}
