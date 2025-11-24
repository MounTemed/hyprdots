{ pkgs, ... }:
{
  home.packages = with pkgs; [
    loupe
    showtime
    lact
    papers
    nautilus

    telegram-desktop

    chromium

    libreoffice
  ];
}
