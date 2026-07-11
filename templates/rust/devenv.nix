{ pkgs, ... }:
{
  languages.rust.enable = true;

  languages.rust.channel = "stable";

  packages = with pkgs; [
    rust-analyzer
    cargo-watch
  ];

  enterShell = ''
    echo "Rust development environment loaded!"
    cargo --version
  '';
}
