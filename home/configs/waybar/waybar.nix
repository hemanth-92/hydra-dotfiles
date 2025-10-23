{ config, pkgs, lib, ... }:

let
  waybarconfDir = "${config.home.homeDirectory}/hydra-dotfiles/home/configs/waybar/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-waybar = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    rm -rf ${config.home.homeDirectory}/.config/waybar
    ln -sfn ${waybarconfDir} ${config.home.homeDirectory}/.config/waybar
  '';
}
