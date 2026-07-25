{ pkgs, ... }:
{
  languages.gleam.enable = true;

  packages = with pkgs; [
    erlang
    rebar3
  ];

  enterShell = ''
    echo "Gleam development environment loaded!"
    gleam --version
  '';
}
