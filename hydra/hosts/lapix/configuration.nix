{ config, pkgs, ... }:

{
    imports =
    [   # Include the results of the hardware scan.
        ./hardware-configuration.nix
        ./driver.nix

        ../modules.nix
    ];

    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.zenith = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    kitty
    ];
    };

    # Define your hostname. 
    networking.hostName = "nixos";

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
    neovim
    ];

    # Enable flakes
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    system.stateVersion = "25.05";

}
