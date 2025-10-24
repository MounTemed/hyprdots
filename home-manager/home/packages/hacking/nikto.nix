{ pkgs, ... }: {
  home.packages = with pkgs; [
    nikto
  ];
}