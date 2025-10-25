{
  config,
  pkgs,
  inputs,
  ...
}:

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
    brightnessctl # read brightness
    ani-cli
    caligula # User-friendly, lightweight TUI for disk imaging
    dconf-editor
    docfd # TUI multiline fuzzy document finder
    fd # find replacement
    ffmpeg
    file # Show file information
    gifsicle # gif utility
    gtrash # rm replacement, put deleted files in system trash
    btop
    imv # image viewer
    jq # JSON processor
    killall
    libnotify
    man-pages # extra man pages
    mpv # video player
    ncdu # disk space
    nitch # systhem fetch util
    nixd # nix lsp
    nixfmt-rfc-style # nix formatter
    openssl
    onefetch # fetch utility for git repo
    pamixer # pulseaudio command line mixer
    playerctl # controller for media players
    poweralertd
    ripgrep # grep replacement
    treefmt # project formatter
    tldr
    todo # cli todo list
    toipe # typing test in the terminal
    ttyper # cli typing test
    unzip
    unrar
    yt-dlp-light
    xdg-utils
    inxi # show system information
    powertop
    bat
    nitch

    # Show Disk Usage
    dua
    duf
    dysk

    ## GUI Apps
    libreoffice
    nix-prefetch-github
    resources # GUI resources monitor
    vlc
    obsidian
    telegram-desktop
    qbittorrent
    evince # pdf
    audacious
    zenity

    tree
    swayidle
    lm_sensors
    nwg-look
    vesktop

    ## CLI
    cbonsai # terminal screensaver
    cmatrix
    pipes # terminal screensaver
    tty-clock # cli clock
    tldr

    # editors
    zed-editor
    inputs.nixvim.packages.${pkgs.system}.default
    code-cursor
    vscode

    # C / C++
    gcc
    gdb
    gnumake

    # js
    nodejs_22
    pnpm
    deno

    # Python
    python3
    python312Packages.ipython
    uv

    # java
    jdk23

    # rust
    rustup

    aws-nuke

    # zen-browser
    # inputs.zen-browser.packages.${pkgs.system}.default
    #google-chrome

    #minecraft
    prismlauncher

    # formatter
    nixfmt-rfc-style
    shfmt
  ];
}
