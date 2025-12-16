{ ... }:
{
  imports = [
    ./ansible.nix
    ./go.nix
    ./helm.nix
    ./nginx.nix
    ./nix.nix
    ./opentofu.nix
    ./podman.nix
    ./postgresql.nix
    ./rust.nix
  ];
}
