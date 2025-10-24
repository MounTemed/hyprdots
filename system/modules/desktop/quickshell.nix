{
  pkgs,
  inputs,
  ...
}:
let
  quickshell = inputs.quickshell.packages.${pkgs.system}.default;
in
{
  environment.systemPackages = [ 
    quickshell
  ];
}
