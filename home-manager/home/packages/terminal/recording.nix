{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wf-recorder
    gpu-screen-recorder
  ];
}
