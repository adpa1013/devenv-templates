{ pkgs, ... }:
{
  languages.ruby.enable = true;

  languages.ruby.bundler.enable = true;

  packages = with pkgs; [
    libyaml
    sqlite
  ];

  enterShell = ''
    echo "Ruby development environment loaded!"
    ruby --version
  '';
}
