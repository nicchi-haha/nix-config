{
  description = "Sorry";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";

    wrappers = {
      url = "github:nix-community/nix-wrapper-modules";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-26.05";

    sonora.url = "github:sonorahq/sonora";
  };

  outputs = inputs:
  let
    inherit (inputs.nixpkgs) lib;
    inherit (lib.fileset) toList fileFilter;

    isNixModule = file:
    file.hasExt "nix"
    && file.name != "flake.nix"
    && !lib.hasPrefix "_" file.name;

    importTree = path:
    toList (fileFilter isNixModule path);

    mkFlake = inputs.flake-parts.lib.mkFlake {inherit inputs;};
  in
  mkFlake {
    imports = importTree ./.;
  };
}
