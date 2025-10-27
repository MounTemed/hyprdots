{ pkgs, ... }:
{
  enable = true;
  autoEnable = false;

  cursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 22;
  };
}
