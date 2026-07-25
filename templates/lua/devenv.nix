{ pkgs, ... }:
{
  languages.lua.enable = true;

  packages = with pkgs; [
    lua-language-server
  ];

  enterShell = ''
    echo "Lua development environment loaded!"
    lua -v
  '';
}
