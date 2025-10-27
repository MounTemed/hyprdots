{ pkgs, ... }:
{
  home.packages = with pkgs; [
    loupe
    showtime
    lact
    papers

    telegram-desktop

    chromium
  ];
}
