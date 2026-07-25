{ pkgs, ... }:
{
  languages.javascript.enable = true;
  languages.typescript.enable = true;

  packages = with pkgs; [
    nodejs
    pnpm
    typescript-language-server
  ];

  enterShell = ''
    echo "TypeScript development environment loaded!"
    node --version
  '';
}
