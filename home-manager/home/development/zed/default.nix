{
  pkgs,
  inputs,
  ...
}:
# let
#   # zed-latest = inputs.zed.packages.${pkgs.stdenv.hostPlatform.system}.default;
# in
{
  home.packages = [
    # zed-latest
    pkgs.zed-editor
  ];
}
