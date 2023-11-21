{ lib, ... }:

{
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    # ports = [ 2398 ];
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = lib.mkDefault true;
    };
  };
}
