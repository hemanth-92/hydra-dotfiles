{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./apps/utils.nix
    ./apps/brave.nix
    ./apps/theming.nix
    ./apps/nh.nix
    ./apps/git.nix
    ./apps/bash.nix
    ./apps/ghostty.nix
    ./apps/rofi.nix
    ./apps/waypaper.nix
    ./apps/swaync.nix
    ./apps/swayosd.nix
    ./apps/nemo.nix
    ./apps/swaylock.nix
    ./apps/xdg.nix
    ./apps/direnv.nix
    ./configs/hyprland/hyprland.nix
    ./configs/waybar/waybar.nix
    ./configs/mango/mango.nix
  ];
  home.enableNixpkgsReleaseCheck = false;
  home = {
    username = "zenith";
    homeDirectory = "/home/zenith";
    stateVersion = "25.05";
  };
}
