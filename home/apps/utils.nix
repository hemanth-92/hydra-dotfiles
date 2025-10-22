 { config, pkgs, ... }:

{
  programs.eza = {
    enable = true;
    icons = "auto";
    extraOptions = [
      "--group-directories-first"
      "--header"
      "--octal-permissions"
      "--hyperlink"
    ];
  };

  home.shellAliases = {
    t = "eza -la --git-ignore --icons --tree --hyperlink --level 3";
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
    options = [ "--cmd cd" ];
  };

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
    duf
    vlc
    tree
    bat
    htop
    cava
    nemo
    kitty
    waybar
    firefox
    obsidian
    fastfetch
    vesktop
    libreoffice-fresh
  ];
}

