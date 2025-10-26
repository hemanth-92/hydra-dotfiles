{ config, pkgs, ... }:

{
  # Networking & Bluetooth
  networking.networkmanager = {
    enable = true;
    wifi = {
      powersave = false;
    };
  };
  hardware.bluetooth.enable = true;

  # Obs Studio
  programs.obs-studio = {
    enable = true;
    enableVirtualCamera = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
      obs-gstreamer
      obs-vkcapture
    ];
  };

  #zram
  zramSwap = {
    enable = true;
    priority = 100;
    algorithm = "lz4";
    memoryPercent = 50;
  };

  # Fonts
  fonts = {
    packages = with pkgs; [
      maple-mono.NF-CN
      noto-fonts
      noto-fonts-emoji
      noto-fonts-cjk-sans
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      nerd-fonts.droid-sans-mono
      font-awesome
    ];
    fontconfig = {
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ]; # or use "OpenMoji Color"
      };
    };
  };

  # System services
  security.polkit.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
  services.printing.enable = true;
  services.gvfs.enable = true;
  services.dbus.enable = true;
  services.udisks2.enable = true;

  # Pipewire sound
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
    # jack.enable = true;      # Uncomment if needed
    # media-session.enable = true;  # Optional
  };

  # Environment/system packages
  environment.systemPackages = with pkgs; [
    ntfs3g
    networkmanagerapplet
    blueman
    wlroots
    wl-clipboard
    cliphist
    xwayland-satellite
    libjpeg
    libtiff
    libnotify
    mako
    grim
    grimblast
    slurp
    brightnessctl
    hyprlock
    hypridle
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    ffmpegthumbnailer
    watchdog

    # System utils
    nvtopPackages.full
    waybar
  ];
}
