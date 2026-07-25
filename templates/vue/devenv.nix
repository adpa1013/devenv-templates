{ pkgs, ... }:
{
  languages.javascript.enable = true;
  languages.typescript.enable = true;

  packages = with pkgs; [
    nodejs
    pnpm
    vue-language-server
  ];

  enterShell = ''
    echo "Vue development environment loaded!"
    node --version
  '';
}
