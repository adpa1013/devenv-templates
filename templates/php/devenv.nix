{ pkgs, ... }:
{
  languages.php.enable = true;

  packages = with pkgs; [
    php83Packages.composer
  ];

  enterShell = ''
    echo "PHP development environment loaded!"
    php -v
  '';
}
