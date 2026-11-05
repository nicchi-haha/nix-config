{ inputs, lib, ... }:

{
  config.systems = [
    "x86_64-linux"
  ];

  # Allow definining homeModules multiple times
  options.flake.homeModules = lib.mkOption {
    default = {};
    type = lib.types.lazyAttrsOf lib.types.raw;
  };
}
