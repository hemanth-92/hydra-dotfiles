 { config, pkgs, ... }:

 { 
  # Home utils
  home.packages = with pkgs; [
    # Development
    vscode
    neovim
    gcc
    nodejs
    python3

    # Utils
    feh
    eog
    gthumb
    ghostty
    duf
    vlc
    eza
    tree
    nemo
    kitty
    rofi
    waybar
    librewolf
    obsidian
    fastfetch
    vesktop
    libreoffice-fresh
    ];
}
