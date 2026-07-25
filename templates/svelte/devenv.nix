{ pkgs, ... }:
{
  languages.javascript.enable = true;
  languages.typescript.enable = true;

  packages = with pkgs; [
    nodejs
    pnpm
    svelte-language-server
  ];

  enterShell = ''
    echo "Svelte development environment loaded!"
    node --version
  '';
}
