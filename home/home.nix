{ config, pkgs, ... }:

{
  imports =
    [
      ./apps/utils.nix
      ./apps/brave.nix
      ./apps/theming.nix
      ./apps/nh.nix
      ./config/git.nix
      ./config/shell.nix
      ./config/hyprland/hyprland.nix
      ./config/niri/niri.nix
      ./config/waybar/waybar.nix
      ./config/mango/mango.nix
    ];

  home = {
    username = "zenith";
    homeDirectory = "/home/zenith";
    stateVersion = "25.05";
    };
}
