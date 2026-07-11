{ pkgs, ... }:
{
  languages.python.enable = true;

  languages.python.venv.enable = true;

  packages = with pkgs; [
    ruff
  ];

  enterShell = ''
    echo "Python development environment loaded!"
    python --version
  '';
}
