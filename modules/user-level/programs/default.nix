# Import everything except gaming

{
  imports = [
    ./browsers.nix
    ./polkit-agent.nix
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
