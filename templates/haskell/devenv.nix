{ pkgs, ... }:
{
  languages.haskell.enable = true;

  packages = with pkgs; [
    cabal-install
    haskell-language-server
  ];

  enterShell = ''
    echo "Haskell development environment loaded!"
    ghc --version
  '';
}
