{
  description = "dumb flake for my dumb setup";

  inputs = {
    # Unstable channel
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Stable channel
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-26.05";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Caelestia Shell
    # caelestia-shell = {
    #   url = "github:caelestia-dots/shell";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = { self, nixpkgs, home-manager,  ... }@inputs: {
    nixosConfigurations = {
      snowflake = let
        username = "yuki";
        system = "x86_64-linux";

        pkgs-stable = import inputs.nixpkgs-stable {
          inherit system;
        };

        specialArgs = {
          inherit username;
          inherit system;
          inherit pkgs-stable;
        };
      in
      nixpkgs.lib.nixosSystem {
        inherit specialArgs;

        modules = [
          ./unfree-list.nix
          ./hosts/snowflake
          ./users/${username}/nixos.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.extraSpecialArgs = {
              inherit inputs;
              inherit system;
              inherit pkgs-stable;
            };
            home-manager.users.${username} = import ./users/${username}/home.nix;
          }
        ];
      };
    };
  };
}
