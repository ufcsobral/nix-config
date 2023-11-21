{ pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    chromium
    firefox
    git
    google-chrome
    home-manager
    nanorc
    service-wrapper
    telegram-desktop
    vlc
    wpsoffice
  ];
}
