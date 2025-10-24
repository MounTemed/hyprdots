{ pkgs, self, ... }:
{
  enable = true;
  autoEnable = false;

  base16Scheme = "${self}/home-manager/home/stylix/wave.yaml";

  targets = {
    qt.enable = false;
  };

  cursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 22;
  };
}
