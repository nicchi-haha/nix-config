# Import everything except gaming

{
  imports = [
    ./browsers.nix
    ./mpd.nix
    ./multimedia.nix
    ./terminal.nix
    ./common.nix
    ./vim.nix
    ./fcitx5.nix

    ./pro-audio
    ./development
  ];
}
