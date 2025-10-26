{ config, ... }:

{
  # Bootloader.
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";
  boot.loader.grub = {
    enable = true;
    device = "nodev";
    efiSupport = true;
  };
}
