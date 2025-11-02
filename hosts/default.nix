{
  inputs,
  self,
  ...
}:
let
  homeImports = "${self}/home-manager/profiles/${user}";
  user = "laimick"; # Change pls
in
{
  flake.nixosConfigurations = {
    nixos = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit
          inputs
          self
          user
          ;
      };

      modules = [
        ./io

        inputs.home-manager.nixosModules.home-manager
        inputs.nix-index-database.nixosModules.nix-index
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.${user} =
              { config, pkgs, ... }:
              (import homeImports {
                inherit
                  config
                  pkgs
                  self
                  inputs
                  user
                  ;
              });
            extraSpecialArgs = {
              inherit
                inputs
                self
                user
                ;
            };
            backupFileExtension = ".hm-backup";
          };
        }
      ];
    };
  };
}
