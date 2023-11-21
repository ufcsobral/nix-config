{ pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    adw-gtk3 # https://github.com/lassekongo83/adw-gtk3
    adwaita-qt
    dconf
    gnome-obfuscate
    gnome.adwaita-icon-theme
    gnome.gnome-software
    gnome.gnome-tweaks
    gnomeExtensions.expandable-notifications
  ];

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
}
