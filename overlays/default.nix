# do note that overlays here doesn't strictly mean nix overlays. I'm planning to use this to add mess into my config
# Modules are evaluated as nixos modules, so home manager options doesn't work, unless...

{
  imports = [
    ./pins.nix
    ./mess
  ];
}
