{ pkgs, ... }:
{
  packages = with pkgs; [
    postgresql
    sqlite
    sqldef
    pgcli
  ];

  enterShell = ''
    echo "SQL development environment loaded!"
  '';
}
