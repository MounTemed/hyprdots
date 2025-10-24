{ pkgs, ... }:
{
  home.packages = with pkgs; [
    git

    mergiraf
  ];

  programs.git = {
    enable = true;
    settings.user = {
      name = "MounTemed";
      email = "LuneFamily@wr.do";
    };
  };
}
