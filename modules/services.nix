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

  # System services
  security = {
    rtkit.enable = true;
    sudo.enable = true;
    polkit.enable = true;
    pam.services = {
      swaylock = { };
    };
  };

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
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
    ffmpegthumbnailer
    watchdog
    wlr-randr

    # System utils
    nvtopPackages.full
    waybar
  ];
}
