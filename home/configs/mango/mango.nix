{
  config,
  pkgs,
  lib,
  ...
}:

let
  mangoconfDir = "${config.home.homeDirectory}/hydra-dotfiles/home/configs/mango/config";
in
{
  home.file.".config/.keep".text = "";

  home.activation.symlink-mango = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p ${config.home.homeDirectory}/.config
    rm -rf ${config.home.homeDirectory}/.config/mango
    ln -sfn ${mangoconfDir} ${config.home.homeDirectory}/.config/mango
  '';
}
