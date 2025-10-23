{ config, pkgs, ... }:

{
  imports =
    [
      ./apps/utils.nix
      ./apps/brave.nix
      ./apps/theming.nix
      ./apps/nh.nix
      ./apps/git.nix
      ./apps/bash.nix
      ./apps/ghostty.nix
      ./apps/rofi.nix
      ./apps/waypaper.nix
      ./configs/hyprland/hyprland.nix
      ./configs/waybar/waybar.nix
      ./configs/mango/mango.nix
    ];

  home = {
    username = "zenith";
    homeDirectory = "/home/zenith";
    stateVersion = "25.05";
    };
}
