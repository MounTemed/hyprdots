{
  pkgs,
  inputs,
  ...
}:
let
  quickshell = inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default;
in
{
  environment.systemPackages = [
    quickshell
  ];
}
